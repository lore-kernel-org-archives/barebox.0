Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw7C1-00088u-Qt
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 15:20:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw7Bz-0006hM-Tk
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 16:20:19 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw7Bz-0005ZT-LW
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 16:20:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 16:20:14 +0100
Message-Id: <20190219152013.17484-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: 20190219141647.2537-3-a.fatoum@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fixup! scripts/checkpatch.pl: rebase on top of upstream
 v5.0-rc6
To: barebox@lists.infradead.org

Import const_structs.checkpatch from Linux v5.0-rc6. Leaving the
file empty leads to false positives. If false positives pop up
with the Linux list, they could be adjusted.

The fixed-up commit message needs to be adjusted as well:
  - - const_structs.checkpatch: added as empty file for now
  + - const_structs.checkpatch: imported from upstream

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/const_structs.checkpatch | 64 ++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/scripts/const_structs.checkpatch b/scripts/const_structs.checkpatch
index e69de29bb2d1..ac5f1267151d 100644
--- a/scripts/const_structs.checkpatch
+++ b/scripts/const_structs.checkpatch
@@ -0,0 +1,64 @@
+acpi_dock_ops
+address_space_operations
+backlight_ops
+block_device_operations
+clk_ops
+comedi_lrange
+component_ops
+dentry_operations
+dev_pm_ops
+dma_map_ops
+driver_info
+drm_connector_funcs
+drm_encoder_funcs
+drm_encoder_helper_funcs
+ethtool_ops
+extent_io_ops
+file_lock_operations
+file_operations
+hv_ops
+ide_dma_ops
+ide_port_ops
+inode_operations
+intel_dvo_dev_ops
+irq_domain_ops
+item_operations
+iwl_cfg
+iwl_ops
+kgdb_arch
+kgdb_io
+kset_uevent_ops
+lock_manager_operations
+machine_desc
+microcode_ops
+mlxsw_reg_info
+mtrr_ops
+neigh_ops
+net_device_ops
+nlmsvc_binding
+nvkm_device_chip
+of_device_id
+pci_raw_ops
+pipe_buf_operations
+platform_hibernation_ops
+platform_suspend_ops
+proto_ops
+regmap_access_table
+rpc_pipe_ops
+rtc_class_ops
+sd_desc
+seq_operations
+sirfsoc_padmux
+snd_ac97_build_ops
+snd_soc_component_driver
+soc_pcmcia_socket_ops
+stacktrace_ops
+sysfs_ops
+tty_operations
+uart_ops
+usb_mon_operations
+v4l2_ctrl_ops
+v4l2_ioctl_ops
+vm_operations_struct
+wacom_features
+wd_ops
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
