#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xb6fd8534, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x7e3d7491, __VMLINUX_SYMBOL_STR(ovs_geneve_fill_metadata_dst) },
	{ 0x9c27e16b, __VMLINUX_SYMBOL_STR(rpl_geneve_xmit) },
	{ 0xab16523a, __VMLINUX_SYMBOL_STR(ovs_netdev_tunnel_destroy) },
	{ 0x60eb5e6d, __VMLINUX_SYMBOL_STR(ovs_vport_ops_unregister) },
	{ 0x9f4da0d1, __VMLINUX_SYMBOL_STR(__ovs_vport_ops_register) },
	{ 0xf40d20d8, __VMLINUX_SYMBOL_STR(ovs_vport_free) },
	{ 0x90276a29, __VMLINUX_SYMBOL_STR(rpl_rtnl_delete_link) },
	{ 0xa8c15b47, __VMLINUX_SYMBOL_STR(ovs_netdev_link) },
	{ 0x6e720ff2, __VMLINUX_SYMBOL_STR(rtnl_unlock) },
	{ 0xd651172a, __VMLINUX_SYMBOL_STR(dev_change_flags) },
	{ 0x17ceb795, __VMLINUX_SYMBOL_STR(rpl_geneve_dev_create_fb) },
	{ 0xc7a4fbed, __VMLINUX_SYMBOL_STR(rtnl_lock) },
	{ 0xeceb0c4a, __VMLINUX_SYMBOL_STR(ovs_vport_alloc) },
	{ 0xcd279169, __VMLINUX_SYMBOL_STR(nla_find) },
	{ 0xdb7305a1, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0xa91d90d3, __VMLINUX_SYMBOL_STR(nla_put) },
	{ 0xbdfb6dbb, __VMLINUX_SYMBOL_STR(__fentry__) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=openvswitch";


MODULE_INFO(srcversion, "473514CED10ED0FA4950011");
