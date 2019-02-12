Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtRkK-0007P4-EU
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 06:41:09 +0000
Received: by mail-pl1-x62e.google.com with SMTP id y10so840452plp.0
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 22:40:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 22:40:22 -0800
Message-Id: <20190212064022.26154-9-andrew.smirnov@gmail.com>
In-Reply-To: <20190212064022.26154-1-andrew.smirnov@gmail.com>
References: <20190212064022.26154-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/8] drivers: Import a very basic NVME implementation from
 Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Import a very abridged NVME implementation from Linux kernel in order
to be able to access NVME storage attached via PCIe.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/Kconfig            |    1 +
 drivers/Makefile           |    1 +
 drivers/nvme/Kconfig       |    5 +
 drivers/nvme/Makefile      |    1 +
 drivers/nvme/host/Kconfig  |   11 +
 drivers/nvme/host/Makefile |    9 +
 drivers/nvme/host/core.c   |  614 +++++++++++++++++
 drivers/nvme/host/nvme.h   |  148 +++++
 drivers/nvme/host/pci.c    |  697 ++++++++++++++++++++
 include/linux/nvme.h       | 1271 ++++++++++++++++++++++++++++++++++++
 10 files changed, 2758 insertions(+)
 create mode 100644 drivers/nvme/Kconfig
 create mode 100644 drivers/nvme/Makefile
 create mode 100644 drivers/nvme/host/Kconfig
 create mode 100644 drivers/nvme/host/Makefile
 create mode 100644 drivers/nvme/host/core.c
 create mode 100644 drivers/nvme/host/nvme.h
 create mode 100644 drivers/nvme/host/pci.c
 create mode 100644 include/linux/nvme.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index c6c2eb14d..d6fbcbfe1 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -39,5 +39,6 @@ source "drivers/phy/Kconfig"
 source "drivers/crypto/Kconfig"
 source "drivers/memory/Kconfig"
 source "drivers/soc/imx/Kconfig"
+source "drivers/nvme/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 752fd6624..65fd488ce 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -39,3 +39,4 @@ obj-$(CONFIG_CRYPTO_HW) += crypto/
 obj-$(CONFIG_AIODEV) += aiodev/
 obj-y	+= memory/
 obj-y	+= soc/imx/
+obj-y	+= nvme/
diff --git a/drivers/nvme/Kconfig b/drivers/nvme/Kconfig
new file mode 100644
index 000000000..27ac9654a
--- /dev/null
+++ b/drivers/nvme/Kconfig
@@ -0,0 +1,5 @@
+menu "NVME Support"
+
+source "drivers/nvme/host/Kconfig"
+
+endmenu
diff --git a/drivers/nvme/Makefile b/drivers/nvme/Makefile
new file mode 100644
index 000000000..6d7d51c80
--- /dev/null
+++ b/drivers/nvme/Makefile
@@ -0,0 +1 @@
+obj-y		+= host/
diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
new file mode 100644
index 000000000..8888c8900
--- /dev/null
+++ b/drivers/nvme/host/Kconfig
@@ -0,0 +1,11 @@
+config NVME_CORE
+	bool
+
+config BLK_DEV_NVME
+	bool "NVM Express block device"
+	depends on PCI && BLOCK
+	select NVME_CORE
+	---help---
+	  The NVM Express driver is for solid state drives directly
+	  connected to the PCI or PCI Express bus.  If you know you
+	  don't have one of these, it is safe to answer N.
diff --git a/drivers/nvme/host/Makefile b/drivers/nvme/host/Makefile
new file mode 100644
index 000000000..9afbc0d2e
--- /dev/null
+++ b/drivers/nvme/host/Makefile
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0
+
+ccflags-y				+= -I$(src)
+
+obj-$(CONFIG_NVME_CORE)			+= nvme-core.o
+obj-$(CONFIG_BLK_DEV_NVME)		+= nvme.o
+
+nvme-core-y				:= core.o
+nvme-y					+= pci.o
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
new file mode 100644
index 000000000..e0984708b
--- /dev/null
+++ b/drivers/nvme/host/core.c
@@ -0,0 +1,614 @@
+#include <common.h>
+
+#include "nvme.h"
+
+int __nvme_submit_sync_cmd(struct nvme_ctrl *ctrl,
+			   struct nvme_command *cmd,
+			   union nvme_result *result,
+			   void *buffer, unsigned bufflen,
+			   unsigned timeout, int qid)
+{
+	return ctrl->ops->submit_sync_cmd(ctrl, cmd, result, buffer, bufflen,
+					  timeout, qid);
+}
+EXPORT_SYMBOL_GPL(__nvme_submit_sync_cmd);
+
+int nvme_submit_sync_cmd(struct nvme_ctrl *ctrl,
+			 struct nvme_command *cmd,
+			 void *buffer, unsigned bufflen)
+{
+	return __nvme_submit_sync_cmd(ctrl, cmd, NULL, buffer, bufflen, 0,
+				      NVME_QID_ADMIN);
+}
+EXPORT_SYMBOL_GPL(nvme_sec_submit);
+
+static int nvme_identify_ctrl(struct nvme_ctrl *dev, struct nvme_id_ctrl **id)
+{
+	struct nvme_command c = { };
+	int error;
+
+	/* gcc-4.4.4 (at least) has issues with initializers and anon unions */
+	c.identify.opcode = nvme_admin_identify;
+	c.identify.cns = NVME_ID_CNS_CTRL;
+
+	*id = kmalloc(sizeof(struct nvme_id_ctrl), GFP_KERNEL);
+	if (!*id)
+		return -ENOMEM;
+
+	error = nvme_submit_sync_cmd(dev, &c, *id,
+				     sizeof(struct nvme_id_ctrl));
+	if (error)
+		kfree(*id);
+
+	return error;
+}
+
+static int
+nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
+		  void *buffer, size_t buflen, u32 *result)
+{
+	struct nvme_command c;
+	union nvme_result res;
+	int ret;
+
+	memset(&c, 0, sizeof(c));
+	c.features.opcode = nvme_admin_set_features;
+	c.features.fid = cpu_to_le32(fid);
+	c.features.dword11 = cpu_to_le32(dword11);
+
+	ret = __nvme_submit_sync_cmd(dev, &c, &res, buffer, buflen, 0,
+				     NVME_QID_ADMIN);
+	if (ret >= 0 && result)
+		*result = le32_to_cpu(res.u32);
+	return ret;
+}
+
+int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
+{
+	u32 q_count = (*count - 1) | ((*count - 1) << 16);
+	u32 result;
+	int status, nr_io_queues;
+
+	status = nvme_set_features(ctrl, NVME_FEAT_NUM_QUEUES, q_count, NULL, 0,
+			&result);
+	if (status < 0)
+		return status;
+
+	/*
+	 * Degraded controllers might return an error when setting the queue
+	 * count.  We still want to be able to bring them online and offer
+	 * access to the admin queue, as that might be only way to fix them up.
+	 */
+	if (status > 0) {
+		dev_err(ctrl->dev, "Could not set queue count (%d)\n", status);
+		*count = 0;
+	} else {
+		nr_io_queues = min(result & 0xffff, result >> 16) + 1;
+		*count = min(*count, nr_io_queues);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nvme_set_queue_count);
+
+static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
+{
+	uint64_t start = get_time_ns();
+	unsigned long timeout =
+		((NVME_CAP_TIMEOUT(cap) + 1) * HZ / 2);
+	u32 csts, bit = enabled ? NVME_CSTS_RDY : 0;
+	int ret;
+
+	while ((ret = ctrl->ops->reg_read32(ctrl, NVME_REG_CSTS, &csts)) == 0) {
+		if (csts == ~0)
+			return -ENODEV;
+		if ((csts & NVME_CSTS_RDY) == bit)
+			break;
+
+		mdelay(100);
+
+		if (is_timeout(start, timeout)) {
+			dev_err(ctrl->dev,
+				"Device not ready; aborting %s\n", enabled ?
+						"initialisation" : "reset");
+			return -ENODEV;
+		}
+	}
+
+	return ret;
+}
+
+static int nvme_identify_ns_list(struct nvme_ctrl *dev, unsigned nsid, __le32 *ns_list)
+{
+	struct nvme_command c = { };
+
+	c.identify.opcode = nvme_admin_identify;
+	c.identify.cns = NVME_ID_CNS_NS_ACTIVE_LIST;
+	c.identify.nsid = cpu_to_le32(nsid);
+	return nvme_submit_sync_cmd(dev, &c, ns_list, NVME_IDENTIFY_DATA_SIZE);
+}
+
+static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
+		unsigned nsid)
+{
+	struct nvme_id_ns *id;
+	struct nvme_command c = { };
+	int error;
+
+	/* gcc-4.4.4 (at least) has issues with initializers and anon unions */
+	c.identify.opcode = nvme_admin_identify;
+	c.identify.nsid = cpu_to_le32(nsid);
+	c.identify.cns = NVME_ID_CNS_NS;
+
+	id = kmalloc(sizeof(*id), GFP_KERNEL);
+	if (!id)
+		return NULL;
+
+	error = nvme_submit_sync_cmd(ctrl, &c, id, sizeof(*id));
+	if (error) {
+		dev_warn(ctrl->dev, "Identify namespace failed\n");
+		kfree(id);
+		return NULL;
+	}
+
+	return id;
+}
+
+static struct nvme_ns_head *nvme_alloc_ns_head(struct nvme_ctrl *ctrl,
+		unsigned nsid, struct nvme_id_ns *id)
+{
+	static int instance = 1;
+	struct nvme_ns_head *head;
+	int ret = -ENOMEM;
+
+	head = kzalloc(sizeof(*head), GFP_KERNEL);
+	if (!head)
+		goto out;
+
+	head->instance = instance++;
+	head->ns_id = nsid;
+
+	return head;
+out:
+	return ERR_PTR(ret);
+}
+
+static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
+		struct nvme_id_ns *id)
+{
+	struct nvme_ctrl *ctrl = ns->ctrl;
+	const bool is_shared = id->nmic & (1 << 0);
+	struct nvme_ns_head *head = NULL;
+
+	if (is_shared) {
+		dev_info(ctrl->dev, "Skipping shared namespace %u\n", nsid);
+		return -ENOTSUPP;
+	}
+
+	head = nvme_alloc_ns_head(ctrl, nsid, id);
+	if (IS_ERR(head))
+		return PTR_ERR(head);
+
+	ns->head = head;
+
+	return 0;
+}
+
+#define DISK_NAME_LEN			32
+
+static void nvme_update_disk_info(struct block_device *blk, struct nvme_ns *ns,
+				  struct nvme_id_ns *id)
+{
+	blk->blockbits = ns->lba_shift;
+	blk->num_blocks = le64_to_cpup(&id->nsze);
+
+	ns->readonly = id->nsattr & (1 << 0);
+}
+
+static void __nvme_revalidate_disk(struct block_device *blk,
+				   struct nvme_id_ns *id)
+{
+	struct nvme_ns *ns = to_nvme_ns(blk);
+
+	/*
+	 * If identify namespace failed, use default 512 byte block size so
+	 * block layer can use before failing read/write for 0 capacity.
+	 */
+	ns->lba_shift = id->lbaf[id->flbas & NVME_NS_FLBAS_LBA_MASK].ds;
+	if (ns->lba_shift == 0)
+		ns->lba_shift = 9;
+
+	nvme_update_disk_info(blk, ns, id);
+}
+
+static void nvme_setup_rw(struct nvme_ns *ns, struct nvme_command *cmnd,
+			  int block, int num_block)
+{
+	cmnd->rw.nsid = cpu_to_le32(ns->head->ns_id);
+	cmnd->rw.slba = cpu_to_le64(nvme_block_nr(ns, block));
+	cmnd->rw.length = cpu_to_le16(num_block - 1);
+	cmnd->rw.control = 0;
+	cmnd->rw.dsmgmt = 0;
+}
+
+static void nvme_setup_flush(struct nvme_ns *ns, struct nvme_command *cmnd)
+{
+	memset(cmnd, 0, sizeof(*cmnd));
+	cmnd->common.opcode = nvme_cmd_flush;
+	cmnd->common.nsid = cpu_to_le32(ns->head->ns_id);
+}
+
+static int nvme_submit_sync_rw(struct nvme_ns *ns, struct nvme_command *cmnd,
+			       void *buffer, int block, int num_blocks)
+{
+	/*
+	 * ns->ctrl->max_hw_sectors is in units of 512 bytes, so we
+	 * need to make sure we adjust it to discovered lba_shift
+	 */
+	const u32 max_hw_sectors =
+		ns->ctrl->max_hw_sectors >> (ns->lba_shift - 9);
+	int ret;
+
+	if (num_blocks > max_hw_sectors) {
+		while (num_blocks) {
+			const int chunk = min_t(int, num_blocks,
+						max_hw_sectors);
+
+			ret = nvme_submit_sync_rw(ns, cmnd, buffer, block,
+						  chunk);
+			if (ret)
+				break;
+
+			num_blocks -= chunk;
+			buffer += chunk;
+			block += chunk;
+		}
+
+		return ret;
+	}
+
+	nvme_setup_rw(ns, cmnd, block, num_blocks);
+
+	ret = __nvme_submit_sync_cmd(ns->ctrl, cmnd, NULL, buffer,
+				     num_blocks << ns->lba_shift,
+				     0, NVME_QID_IO);
+
+	if (ret) {
+		dev_err(ns->ctrl->dev,
+			"I/O failed: block: %d, num blocks: %d, status code type: %xh, status code %02xh\n",
+			block, num_blocks, (ret >> 8) & 0xf,
+			ret & 0xff);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+
+static int nvme_block_device_read(struct block_device *blk, void *buffer,
+				  int block, int num_blocks)
+{
+	struct nvme_ns *ns = to_nvme_ns(blk);
+	struct nvme_command cmnd = { };
+
+	cmnd.rw.opcode = nvme_cmd_read;
+
+	return nvme_submit_sync_rw(ns, &cmnd, buffer, block, num_blocks);
+}
+
+static int __maybe_unused
+nvme_block_device_write(struct block_device *blk, const void *buffer,
+			int block, int num_blocks)
+{
+	struct nvme_ns *ns = to_nvme_ns(blk);
+	struct nvme_command cmnd = { };
+
+	if (ns->readonly)
+		return -EINVAL;
+
+	cmnd.rw.opcode = nvme_cmd_write;
+
+	return nvme_submit_sync_rw(ns, &cmnd, (void *)buffer, block,
+				   num_blocks);
+}
+
+static int __maybe_unused nvme_block_device_flush(struct block_device *blk)
+{
+	struct nvme_ns *ns = to_nvme_ns(blk);
+	struct nvme_command cmnd = { };
+
+	nvme_setup_flush(ns, &cmnd);
+
+	return __nvme_submit_sync_cmd(ns->ctrl, &cmnd, NULL, NULL,
+				      0, 0, NVME_QID_IO);
+}
+
+static struct block_device_ops nvme_block_device_ops = {
+	.read = nvme_block_device_read,
+#ifdef CONFIG_BLOCK_WRITE
+	.write = nvme_block_device_write,
+	.flush = nvme_block_device_flush,
+#endif
+};
+
+static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
+{
+	struct nvme_ns *ns;
+	struct nvme_id_ns *id;
+	char disk_name[DISK_NAME_LEN];
+	int ret, flags;
+
+	ns = kzalloc(sizeof(*ns), GFP_KERNEL);
+	if (!ns)
+		return;
+
+	ns->ctrl = ctrl;
+	ns->lba_shift = 9; /* set to a default value for 512 until
+			    * disk is validated */
+
+	id = nvme_identify_ns(ctrl, nsid);
+	if (!id)
+		goto out_free_ns;
+
+	if (id->ncap == 0)
+		goto out_free_id;
+
+	if (nvme_init_ns_head(ns, nsid, id))
+		goto out_free_id;
+
+	nvme_set_disk_name(disk_name, ns, ctrl, &flags);
+
+	ns->blk.dev = ctrl->dev;
+	ns->blk.ops = &nvme_block_device_ops;
+	ns->blk.cdev.name = strdup(disk_name);
+
+	__nvme_revalidate_disk(&ns->blk, id);
+	kfree(id);
+
+	ret = blockdevice_register(&ns->blk);
+	if (ret) {
+		dev_err(ctrl->dev, "Cannot register block device (%d)\n", ret);
+		goto out_free_id;
+	}
+
+	return;
+out_free_id:
+	kfree(id);
+out_free_ns:
+	kfree(ns);
+}
+
+static int nvme_scan_ns_list(struct nvme_ctrl *ctrl, unsigned nn)
+{
+	__le32 *ns_list;
+	unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP(nn, 1024);
+	int ret = 0;
+
+	ns_list = kzalloc(NVME_IDENTIFY_DATA_SIZE, GFP_KERNEL);
+	if (!ns_list)
+		return -ENOMEM;
+
+	for (i = 0; i < num_lists; i++) {
+		ret = nvme_identify_ns_list(ctrl, prev, ns_list);
+		if (ret)
+			goto out;
+
+		for (j = 0; j < min(nn, 1024U); j++) {
+			nsid = le32_to_cpu(ns_list[j]);
+			if (!nsid)
+				goto out;
+
+			nvme_alloc_ns(ctrl, nsid);
+		}
+		nn -= j;
+	}
+ out:
+	kfree(ns_list);
+	return ret;
+}
+
+static void nvme_scan_ns_sequential(struct nvme_ctrl *ctrl, unsigned nn)
+{
+	unsigned i;
+
+	for (i = 1; i <= nn; i++)
+		nvme_alloc_ns(ctrl, i);
+}
+
+static void nvme_scan_work(struct nvme_ctrl *ctrl)
+{
+	struct nvme_id_ctrl *id;
+	unsigned nn;
+
+	if (nvme_identify_ctrl(ctrl, &id))
+		return;
+
+	nn = le32_to_cpu(id->nn);
+	if (ctrl->vs >= NVME_VS(1, 1, 0)) {
+		if (!nvme_scan_ns_list(ctrl, nn))
+			goto out_free_id;
+	}
+	nvme_scan_ns_sequential(ctrl, nn);
+out_free_id:
+	kfree(id);
+}
+
+void nvme_start_ctrl(struct nvme_ctrl *ctrl)
+{
+	if (ctrl->queue_count > 1)
+		nvme_scan_work(ctrl);
+}
+EXPORT_SYMBOL_GPL(nvme_start_ctrl);
+
+/*
+ * If the device has been passed off to us in an enabled state, just clear
+ * the enabled bit.  The spec says we should set the 'shutdown notification
+ * bits', but doing so may cause the device to complete commands to the
+ * admin queue ... and we don't know what memory that might be pointing at!
+ */
+int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
+{
+	int ret;
+
+	ctrl->ctrl_config &= ~NVME_CC_SHN_MASK;
+	ctrl->ctrl_config &= ~NVME_CC_ENABLE;
+
+	ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC, ctrl->ctrl_config);
+	if (ret)
+		return ret;
+
+	return nvme_wait_ready(ctrl, cap, false);
+}
+EXPORT_SYMBOL_GPL(nvme_disable_ctrl);
+
+int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
+{
+	/*
+	 * Default to a 4K page size, with the intention to update this
+	 * path in the future to accomodate architectures with differing
+	 * kernel and IO page sizes.
+	 */
+	unsigned dev_page_min = NVME_CAP_MPSMIN(cap) + 12, page_shift = 12;
+	int ret;
+
+	if (page_shift < dev_page_min) {
+		dev_err(ctrl->dev,
+			"Minimum device page size %u too large for host (%u)\n",
+			1 << dev_page_min, 1 << page_shift);
+		return -ENODEV;
+	}
+
+	ctrl->page_size = 1 << page_shift;
+
+	ctrl->ctrl_config = NVME_CC_CSS_NVM;
+	ctrl->ctrl_config |= (page_shift - 12) << NVME_CC_MPS_SHIFT;
+	ctrl->ctrl_config |= NVME_CC_AMS_RR | NVME_CC_SHN_NONE;
+	ctrl->ctrl_config |= NVME_CC_IOSQES | NVME_CC_IOCQES;
+	ctrl->ctrl_config |= NVME_CC_ENABLE;
+
+	ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC, ctrl->ctrl_config);
+	if (ret)
+		return ret;
+	return nvme_wait_ready(ctrl, cap, true);
+}
+EXPORT_SYMBOL_GPL(nvme_enable_ctrl);
+
+int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl)
+{
+	uint64_t start = get_time_ns();
+	unsigned long timeout = SHUTDOWN_TIMEOUT;
+	u32 csts;
+	int ret;
+
+	ctrl->ctrl_config &= ~NVME_CC_SHN_MASK;
+	ctrl->ctrl_config |= NVME_CC_SHN_NORMAL;
+
+	ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC, ctrl->ctrl_config);
+	if (ret)
+		return ret;
+
+	while ((ret = ctrl->ops->reg_read32(ctrl, NVME_REG_CSTS, &csts)) == 0) {
+		if ((csts & NVME_CSTS_SHST_MASK) == NVME_CSTS_SHST_CMPLT)
+			break;
+
+		mdelay(100);
+
+		if (is_timeout(start, timeout)) {
+			dev_err(ctrl->dev,
+				"Device shutdown incomplete; abort shutdown\n");
+			return -ENODEV;
+		}
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(nvme_shutdown_ctrl);
+
+#define NVME_ID_MAX_LEN		41
+
+static void nvme_print(struct nvme_ctrl *ctrl, const char *prefix,
+		       const char *_string, size_t _length)
+{
+	char string[NVME_ID_MAX_LEN];
+	const size_t length = min(_length, sizeof(string) - 1);
+
+	memcpy(string, _string, length);
+	string[length - 1] = '\0';
+
+	dev_info(ctrl->dev, "%s: %s\n", prefix, string);
+}
+
+static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
+{
+	nvme_print(ctrl, "serial",   id->sn, sizeof(id->sn));
+	nvme_print(ctrl, "model",    id->mn, sizeof(id->mn));
+	nvme_print(ctrl, "firmware", id->fr, sizeof(id->fr));
+
+	return 0;
+}
+
+/*
+ * Initialize the cached copies of the Identify data and various controller
+ * register in our nvme_ctrl structure.  This should be called as soon as
+ * the admin queue is fully up and running.
+ */
+int nvme_init_identify(struct nvme_ctrl *ctrl)
+{
+	struct nvme_id_ctrl *id;
+	u64 cap;
+	int ret, page_shift;
+	u32 max_hw_sectors;
+
+	ret = ctrl->ops->reg_read32(ctrl, NVME_REG_VS, &ctrl->vs);
+	if (ret) {
+		dev_err(ctrl->dev, "Reading VS failed (%d)\n", ret);
+		return ret;
+	}
+
+	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &cap);
+	if (ret) {
+		dev_err(ctrl->dev, "Reading CAP failed (%d)\n", ret);
+		return ret;
+	}
+	page_shift = NVME_CAP_MPSMIN(cap) + 12;
+
+	ret = nvme_identify_ctrl(ctrl, &id);
+	if (ret) {
+		dev_err(ctrl->dev, "Identify Controller failed (%d)\n", ret);
+		return -EIO;
+	}
+
+	ret = nvme_init_subsystem(ctrl, id);
+	if (ret)
+		return ret;
+
+	if (id->mdts)
+		max_hw_sectors = 1 << (id->mdts + page_shift - 9);
+	else
+		max_hw_sectors = UINT_MAX;
+	ctrl->max_hw_sectors =
+		min_not_zero(ctrl->max_hw_sectors, max_hw_sectors);
+
+	kfree(id);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nvme_init_identify);
+
+
+/*
+ * Initialize a NVMe controller structures.  This needs to be called during
+ * earliest initialization so that we have the initialized structured around
+ * during probing.
+ */
+int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device_d *dev,
+		   const struct nvme_ctrl_ops *ops)
+{
+	static int instance = 0;
+
+	ctrl->dev = dev;
+	ctrl->ops = ops;
+	ctrl->instance = instance++;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nvme_init_ctrl);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
new file mode 100644
index 000000000..4ec4aef97
--- /dev/null
+++ b/drivers/nvme/host/nvme.h
@@ -0,0 +1,148 @@
+/*
+ * Copyright (c) 2011-2014, Intel Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ */
+
+#ifndef _NVME_H
+#define _NVME_H
+
+#include <linux/nvme.h>
+#include <dma.h>
+#include <block.h>
+
+#define ADMIN_TIMEOUT		(60 * HZ)
+#define SHUTDOWN_TIMEOUT	( 5 * HZ)
+
+/*
+ * Common request structure for NVMe passthrough.  All drivers must have
+ * this structure as the first member of their request-private data.
+ */
+struct nvme_request {
+	struct nvme_command	*cmd;
+	union nvme_result	result;
+	u16			status;
+
+	void *buffer;
+	unsigned int buffer_len;
+	dma_addr_t buffer_dma_addr;
+	enum dma_data_direction dma_dir;
+};
+
+struct nvme_ctrl {
+	const struct nvme_ctrl_ops *ops;
+	struct device_d *dev;
+	int instance;
+
+	u32 ctrl_config;
+	u32 queue_count;
+	u64 cap;
+	u32 page_size;
+	u32 max_hw_sectors;
+	u32 vs;
+};
+
+/*
+ * Anchor structure for namespaces.  There is one for each namespace in a
+ * NVMe subsystem that any of our controllers can see, and the namespace
+ * structure for each controller is chained of it.  For private namespaces
+ * there is a 1:1 relation to our namespace structures, that is ->list
+ * only ever has a single entry for private namespaces.
+ */
+struct nvme_ns_head {
+	unsigned		ns_id;
+	int			instance;
+};
+
+struct nvme_ns {
+	struct nvme_ctrl *ctrl;
+	struct nvme_ns_head *head;
+	struct block_device blk;
+
+	int lba_shift;
+	bool readonly;
+};
+
+static inline struct nvme_ns *to_nvme_ns(struct block_device *blk)
+{
+	return container_of(blk, struct nvme_ns, blk);
+}
+
+struct nvme_ctrl_ops {
+	int (*reg_read32)(struct nvme_ctrl *ctrl, u32 off, u32 *val);
+	int (*reg_write32)(struct nvme_ctrl *ctrl, u32 off, u32 val);
+	int (*reg_read64)(struct nvme_ctrl *ctrl, u32 off, u64 *val);
+
+	int (*submit_sync_cmd)(struct nvme_ctrl *ctrl,
+			       struct nvme_command *cmd,
+			       union nvme_result *result,
+			       void *buffer,
+			       unsigned bufflen,
+			       unsigned timeout, int qid);
+};
+
+static inline bool nvme_ctrl_ready(struct nvme_ctrl *ctrl)
+{
+	u32 val = 0;
+
+	if (ctrl->ops->reg_read32(ctrl, NVME_REG_CSTS, &val))
+		return false;
+	return val & NVME_CSTS_RDY;
+}
+
+static inline u64 nvme_block_nr(struct nvme_ns *ns, sector_t sector)
+{
+	return (sector >> (ns->lba_shift - 9));
+}
+
+static inline void nvme_end_request(struct nvme_request *rq, __le16 status,
+		union nvme_result result)
+{
+	rq->status = le16_to_cpu(status) >> 1;
+	rq->result = result;
+}
+
+int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
+int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
+int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl);
+int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device_d *dev,
+		   const struct nvme_ctrl_ops *ops);
+void nvme_start_ctrl(struct nvme_ctrl *ctrl);
+int nvme_init_identify(struct nvme_ctrl *ctrl);
+
+enum nvme_queue_id {
+	NVME_QID_ADMIN,
+	NVME_QID_IO,
+	NVME_QID_NUM,
+	NVME_QID_ANY = -1,
+};
+
+int __nvme_submit_sync_cmd(struct nvme_ctrl *ctrl,
+			   struct nvme_command *cmd,
+			   union nvme_result *result,
+			   void *buffer, unsigned bufflen,
+			   unsigned timeout, int qid);
+int nvme_submit_sync_cmd(struct nvme_ctrl *ctrl,
+			 struct nvme_command *cmd,
+			 void *buffer, unsigned bufflen);
+
+
+int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
+/*
+ * Without the multipath code enabled, multiple controller per subsystems are
+ * visible as devices and thus we cannot use the subsystem instance.
+ */
+static inline void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
+				      struct nvme_ctrl *ctrl, int *flags)
+{
+	sprintf(disk_name, "nvme%dn%d", ctrl->instance, ns->head->instance);
+}
+
+#endif /* _NVME_H */
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
new file mode 100644
index 000000000..387bc45a7
--- /dev/null
+++ b/drivers/nvme/host/pci.c
@@ -0,0 +1,697 @@
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <io-64-nonatomic-lo-hi.h>
+#include <linux/pci.h>
+
+#include <dma.h>
+
+#include "nvme.h"
+
+#define SQ_SIZE(depth)		(depth * sizeof(struct nvme_command))
+#define CQ_SIZE(depth)		(depth * sizeof(struct nvme_completion))
+
+#define NVME_MAX_KB_SZ	4096
+
+static int io_queue_depth = 2;
+
+struct nvme_dev;
+
+/*
+ * An NVM Express queue.  Each device has at least two (one for admin
+ * commands and one for I/O commands).
+ */
+struct nvme_queue {
+	struct nvme_dev *dev;
+	struct nvme_request *req;
+	struct nvme_command *sq_cmds;
+	volatile struct nvme_completion *cqes;
+	dma_addr_t sq_dma_addr;
+	dma_addr_t cq_dma_addr;
+	u32 __iomem *q_db;
+	u16 q_depth;
+	u16 sq_tail;
+	u16 cq_head;
+	u16 qid;
+	u8 cq_phase;
+
+	u16 counter;
+};
+
+/*
+ * Represents an NVM Express device.  Each nvme_dev is a PCI function.
+ */
+struct nvme_dev {
+	struct nvme_queue queues[NVME_QID_NUM];
+	u32 __iomem *dbs;
+	struct device_d *dev;
+	unsigned online_queues;
+	unsigned max_qid;
+	int q_depth;
+	u32 db_stride;
+	void __iomem *bar;
+	bool subsystem;
+	struct nvme_ctrl ctrl;
+	__le64 *prp_pool;
+	unsigned int prp_pool_size;
+	dma_addr_t prp_dma;
+};
+
+static inline struct nvme_dev *to_nvme_dev(struct nvme_ctrl *ctrl)
+{
+	return container_of(ctrl, struct nvme_dev, ctrl);
+}
+
+static int nvme_pci_setup_prps(struct nvme_dev *dev,
+			       const struct nvme_request *req,
+			       struct nvme_rw_command *cmnd)
+{
+	int length = req->buffer_len;
+	const int page_size = dev->ctrl.page_size;
+	dma_addr_t dma_addr = req->buffer_dma_addr;
+	u32 offset = dma_addr & (page_size - 1);
+	u64 prp1 = dma_addr;
+	__le64 *prp_list;
+	int i, nprps;
+	dma_addr_t prp_dma;
+
+
+	length -= (page_size - offset);
+	if (length <= 0) {
+		prp_dma = 0;
+		goto done;
+	}
+
+	dma_addr += (page_size - offset);
+
+	if (length <= page_size) {
+		prp_dma = dma_addr;
+		goto done;
+	}
+
+	nprps = DIV_ROUND_UP(length, page_size);
+	if (nprps > dev->prp_pool_size) {
+		dma_free_coherent(dev->prp_pool, dev->prp_dma,
+				  dev->prp_pool_size * sizeof(u64));
+		dev->prp_pool_size = nprps;
+		dev->prp_pool = dma_alloc_coherent(nprps * sizeof(u64),
+						   &dev->prp_dma);
+	}
+
+	prp_list = dev->prp_pool;
+	prp_dma  = dev->prp_dma;
+
+	i = 0;
+	for (;;) {
+		if (i == page_size >> 3) {
+			__le64 *old_prp_list = prp_list;
+			prp_list = &prp_list[i];
+			prp_dma += page_size;
+			prp_list[0] = old_prp_list[i - 1];
+			old_prp_list[i - 1] = cpu_to_le64(prp_dma);
+			i = 1;
+		}
+
+		prp_list[i++] = cpu_to_le64(dma_addr);
+		dma_addr += page_size;
+		length -= page_size;
+		if (length <= 0)
+			break;
+	}
+
+done:
+	cmnd->dptr.prp1 = cpu_to_le64(prp1);
+	cmnd->dptr.prp2 = cpu_to_le64(prp_dma);
+
+	return 0;
+}
+
+static int nvme_map_data(struct nvme_dev *dev, struct nvme_request *req)
+{
+	if (!req->buffer || !req->buffer_len)
+		return 0;
+
+	req->buffer_dma_addr = dma_map_single(dev->dev, req->buffer,
+					      req->buffer_len, req->dma_dir);
+	if (dma_mapping_error(dev->dev, req->buffer_dma_addr))
+		return -EFAULT;
+
+	return nvme_pci_setup_prps(dev, req, &req->cmd->rw);
+}
+
+static void nvme_unmap_data(struct nvme_dev *dev, struct nvme_request *req)
+{
+	if (!req->buffer || !req->buffer_len)
+		return;
+
+	dma_unmap_single(dev->dev, req->buffer_dma_addr, req->buffer_len,
+			 req->dma_dir);
+}
+
+static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
+{
+	struct nvme_queue *nvmeq = &dev->queues[qid];
+
+	if (dev->ctrl.queue_count > qid)
+		return 0;
+
+	nvmeq->cqes = dma_alloc_coherent(CQ_SIZE(depth),
+					 &nvmeq->cq_dma_addr);
+	if (!nvmeq->cqes)
+		goto free_nvmeq;
+
+	nvmeq->sq_cmds = dma_alloc_coherent(SQ_SIZE(depth),
+					    &nvmeq->sq_dma_addr);
+	if (!nvmeq->sq_cmds)
+		goto free_cqdma;
+
+	nvmeq->dev = dev;
+	nvmeq->cq_head = 0;
+	nvmeq->cq_phase = 1;
+	nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
+	nvmeq->q_depth = depth;
+	nvmeq->qid = qid;
+	dev->ctrl.queue_count++;
+
+	return 0;
+
+ free_cqdma:
+	dma_free_coherent((void *)nvmeq->cqes, nvmeq->cq_dma_addr,
+			  CQ_SIZE(depth));
+ free_nvmeq:
+	return -ENOMEM;
+}
+
+static int adapter_delete_queue(struct nvme_dev *dev, u8 opcode, u16 id)
+{
+	struct nvme_command c;
+
+	memset(&c, 0, sizeof(c));
+	c.delete_queue.opcode = opcode;
+	c.delete_queue.qid = cpu_to_le16(id);
+
+	return nvme_submit_sync_cmd(&dev->ctrl, &c, NULL, 0);
+}
+
+static int adapter_alloc_cq(struct nvme_dev *dev, u16 qid,
+		struct nvme_queue *nvmeq, s16 vector)
+{
+	struct nvme_command c;
+	int flags = NVME_QUEUE_PHYS_CONTIG | NVME_CQ_IRQ_ENABLED;
+
+	/*
+	 * Note: we (ab)use the fact that the prp fields survive if no data
+	 * is attached to the request.
+	 */
+	memset(&c, 0, sizeof(c));
+	c.create_cq.opcode = nvme_admin_create_cq;
+	c.create_cq.prp1 = cpu_to_le64(nvmeq->cq_dma_addr);
+	c.create_cq.cqid = cpu_to_le16(qid);
+	c.create_cq.qsize = cpu_to_le16(nvmeq->q_depth - 1);
+	c.create_cq.cq_flags = cpu_to_le16(flags);
+	c.create_cq.irq_vector = cpu_to_le16(vector);
+
+	return nvme_submit_sync_cmd(&dev->ctrl, &c, NULL, 0);
+}
+
+static int adapter_alloc_sq(struct nvme_dev *dev, u16 qid,
+			    struct nvme_queue *nvmeq)
+{
+	struct nvme_command c;
+	int flags = NVME_QUEUE_PHYS_CONTIG;
+
+	/*
+	 * Note: we (ab)use the fact that the prp fields survive if no data
+	 * is attached to the request.
+	 */
+	memset(&c, 0, sizeof(c));
+	c.create_sq.opcode = nvme_admin_create_sq;
+	c.create_sq.prp1 = cpu_to_le64(nvmeq->sq_dma_addr);
+	c.create_sq.sqid = cpu_to_le16(qid);
+	c.create_sq.qsize = cpu_to_le16(nvmeq->q_depth - 1);
+	c.create_sq.sq_flags = cpu_to_le16(flags);
+	c.create_sq.cqid = cpu_to_le16(qid);
+
+	return nvme_submit_sync_cmd(&dev->ctrl, &c, NULL, 0);
+}
+
+static int adapter_delete_cq(struct nvme_dev *dev, u16 cqid)
+{
+	return adapter_delete_queue(dev, nvme_admin_delete_cq, cqid);
+}
+
+static void nvme_init_queue(struct nvme_queue *nvmeq, u16 qid)
+{
+	struct nvme_dev *dev = nvmeq->dev;
+
+	nvmeq->sq_tail = 0;
+	nvmeq->cq_head = 0;
+	nvmeq->cq_phase = 1;
+	nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
+	dev->online_queues++;
+}
+
+static int nvme_create_queue(struct nvme_queue *nvmeq, int qid)
+{
+	struct nvme_dev *dev = nvmeq->dev;
+	int result;
+	s16 vector;
+
+	vector = 0;
+	result = adapter_alloc_cq(dev, qid, nvmeq, vector);
+	if (result)
+		return result;
+
+	result = adapter_alloc_sq(dev, qid, nvmeq);
+	if (result < 0)
+		return result;
+	else if (result)
+		goto release_cq;
+
+	nvme_init_queue(nvmeq, qid);
+
+	return result;
+
+release_cq:
+	adapter_delete_cq(dev, qid);
+	return result;
+}
+
+/**
+ * nvme_submit_cmd() - Copy a command into a queue and ring the doorbell
+ * @nvmeq: The queue to use
+ * @cmd: The command to send
+ */
+static void nvme_submit_cmd(struct nvme_queue *nvmeq, struct nvme_command *cmd)
+{
+	memcpy(&nvmeq->sq_cmds[nvmeq->sq_tail], cmd, sizeof(*cmd));
+
+	if (++nvmeq->sq_tail == nvmeq->q_depth)
+		nvmeq->sq_tail = 0;
+	writel(nvmeq->sq_tail, nvmeq->q_db);
+}
+
+/* We read the CQE phase first to check if the rest of the entry is valid */
+static inline bool nvme_cqe_pending(struct nvme_queue *nvmeq)
+{
+	return (le16_to_cpu(nvmeq->cqes[nvmeq->cq_head].status) & 1) ==
+			nvmeq->cq_phase;
+}
+
+static inline void nvme_ring_cq_doorbell(struct nvme_queue *nvmeq)
+{
+	u16 head = nvmeq->cq_head;
+
+	writel(head, nvmeq->q_db + nvmeq->dev->db_stride);
+}
+
+static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
+{
+	volatile struct nvme_completion *cqe = &nvmeq->cqes[idx];
+	struct nvme_request *req = nvmeq->req;
+
+	if (unlikely(cqe->command_id >= nvmeq->q_depth)) {
+		dev_warn(nvmeq->dev->ctrl.dev,
+			"invalid id %d completed on queue %d\n",
+			cqe->command_id, le16_to_cpu(cqe->sq_id));
+		return;
+	}
+
+	if (WARN_ON(cqe->command_id != req->cmd->common.command_id))
+		return;
+
+	nvme_end_request(req, cqe->status, cqe->result);
+}
+
+static void nvme_complete_cqes(struct nvme_queue *nvmeq, u16 start, u16 end)
+{
+	while (start != end) {
+		nvme_handle_cqe(nvmeq, start);
+		if (++start == nvmeq->q_depth)
+			start = 0;
+	}
+}
+
+static inline void nvme_update_cq_head(struct nvme_queue *nvmeq)
+{
+	if (++nvmeq->cq_head == nvmeq->q_depth) {
+		nvmeq->cq_head = 0;
+		nvmeq->cq_phase = !nvmeq->cq_phase;
+	}
+}
+
+static inline bool nvme_process_cq(struct nvme_queue *nvmeq, u16 *start,
+		u16 *end, int tag)
+{
+	bool found = false;
+
+	*start = nvmeq->cq_head;
+	while (!found && nvme_cqe_pending(nvmeq)) {
+		if (nvmeq->cqes[nvmeq->cq_head].command_id == tag)
+			found = true;
+		nvme_update_cq_head(nvmeq);
+	}
+	*end = nvmeq->cq_head;
+
+	if (*start != *end)
+		nvme_ring_cq_doorbell(nvmeq);
+	return found;
+}
+
+static bool nvme_poll(struct nvme_queue *nvmeq, unsigned int tag)
+{
+	u16 start, end;
+	bool found;
+
+	if (!nvme_cqe_pending(nvmeq))
+		return false;
+
+	found = nvme_process_cq(nvmeq, &start, &end, tag);
+
+	nvme_complete_cqes(nvmeq, start, end);
+	return found;
+}
+
+static int nvme_pci_submit_sync_cmd(struct nvme_ctrl *ctrl,
+				    struct nvme_command *cmd,
+				    union nvme_result *result,
+				    void *buffer,
+				    unsigned int buffer_len,
+				    unsigned timeout, int qid)
+{
+	struct nvme_dev *dev = to_nvme_dev(ctrl);
+	struct nvme_queue *nvmeq = &dev->queues[qid];
+	struct nvme_request req = { };
+	const u16 tag = nvmeq->counter++ & (nvmeq->q_depth - 1);
+	enum dma_data_direction dma_dir;
+	int ret;
+
+	switch (qid) {
+	case NVME_QID_ADMIN:
+		switch (cmd->common.opcode) {
+		case nvme_admin_create_sq:
+		case nvme_admin_create_cq:
+		case nvme_admin_delete_sq:
+		case nvme_admin_delete_cq:
+		case nvme_admin_set_features:
+			dma_dir = DMA_TO_DEVICE;
+			break;
+		case nvme_admin_identify:
+			dma_dir = DMA_FROM_DEVICE;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+	case NVME_QID_IO:
+		switch (cmd->rw.opcode) {
+		case nvme_cmd_write:
+			dma_dir = DMA_TO_DEVICE;
+			break;
+		case nvme_cmd_read:
+			dma_dir = DMA_FROM_DEVICE;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	cmd->common.command_id = tag;
+
+	timeout = timeout ?: ADMIN_TIMEOUT;
+
+	req.cmd        = cmd;
+	req.buffer     = buffer;
+	req.buffer_len = buffer_len;
+	req.dma_dir    = dma_dir;
+
+	ret = nvme_map_data(dev, &req);
+	if (ret) {
+		dev_err(dev->dev, "Failed to map request data\n");
+		return ret;
+	}
+
+	nvme_submit_cmd(nvmeq, cmd);
+
+	nvmeq->req = &req;
+	ret = wait_on_timeout(timeout, nvme_poll(nvmeq, tag));
+	nvmeq->req = NULL;
+
+	nvme_unmap_data(dev, &req);
+
+	if (result)
+		*result = req.result;
+
+	return ret ?: req.status;
+}
+
+static int nvme_pci_configure_admin_queue(struct nvme_dev *dev)
+{
+	int result;
+	u32 aqa;
+	struct nvme_queue *nvmeq;
+
+	dev->subsystem = readl(dev->bar + NVME_REG_VS) >= NVME_VS(1, 1, 0) ?
+				NVME_CAP_NSSRC(dev->ctrl.cap) : 0;
+
+	if (dev->subsystem &&
+	    (readl(dev->bar + NVME_REG_CSTS) & NVME_CSTS_NSSRO))
+		writel(NVME_CSTS_NSSRO, dev->bar + NVME_REG_CSTS);
+
+	result = nvme_disable_ctrl(&dev->ctrl, dev->ctrl.cap);
+	if (result < 0)
+		return result;
+
+	result = nvme_alloc_queue(dev, NVME_QID_ADMIN, NVME_AQ_DEPTH);
+	if (result)
+		return result;
+
+	nvmeq = &dev->queues[NVME_QID_ADMIN];
+	aqa = nvmeq->q_depth - 1;
+	aqa |= aqa << 16;
+
+	writel(aqa, dev->bar + NVME_REG_AQA);
+	writeq(nvmeq->sq_dma_addr, dev->bar + NVME_REG_ASQ);
+	writeq(nvmeq->cq_dma_addr, dev->bar + NVME_REG_ACQ);
+
+	result = nvme_enable_ctrl(&dev->ctrl, dev->ctrl.cap);
+	if (result)
+		return result;
+
+	nvme_init_queue(nvmeq, NVME_QID_ADMIN);
+
+	return result;
+}
+
+static int nvme_create_io_queues(struct nvme_dev *dev)
+{
+	unsigned i, max;
+	int ret = 0;
+
+	for (i = dev->ctrl.queue_count; i <= dev->max_qid; i++) {
+		if (nvme_alloc_queue(dev, i, dev->q_depth)) {
+			ret = -ENOMEM;
+			break;
+		}
+	}
+
+	max = min(dev->max_qid, dev->ctrl.queue_count - 1);
+	for (i = dev->online_queues; i <= max; i++) {
+		ret = nvme_create_queue(&dev->queues[i], i);
+		if (ret)
+			break;
+	}
+
+	/*
+	 * Ignore failing Create SQ/CQ commands, we can continue with less
+	 * than the desired amount of queues, and even a controller without
+	 * I/O queues can still be used to issue admin commands.  This might
+	 * be useful to upgrade a buggy firmware for example.
+	 */
+	return ret >= 0 ? 0 : ret;
+}
+
+static int nvme_setup_io_queues(struct nvme_dev *dev)
+{
+	int result, nr_io_queues;
+
+	nr_io_queues = NVME_QID_NUM - 1;
+	result = nvme_set_queue_count(&dev->ctrl, &nr_io_queues);
+	if (result < 0)
+		return result;
+
+	dev->max_qid = nr_io_queues;
+
+	return nvme_create_io_queues(dev);
+}
+
+static int nvme_pci_enable(struct nvme_dev *dev)
+{
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
+
+	if (pci_enable_device(pdev))
+		return -ENOMEM;
+
+	pci_set_master(pdev);
+
+	if (readl(dev->bar + NVME_REG_CSTS) == -1)
+		return -ENODEV;
+
+	dev->ctrl.cap = readq(dev->bar + NVME_REG_CAP);
+
+	dev->q_depth = min_t(int, NVME_CAP_MQES(dev->ctrl.cap) + 1,
+			     io_queue_depth);
+	dev->db_stride = 1 << NVME_CAP_STRIDE(dev->ctrl.cap);
+	dev->dbs = dev->bar + 4096;
+
+	return 0;
+}
+
+static void nvme_reset_work(struct nvme_dev *dev)
+{
+	int result = -ENODEV;
+
+	result = nvme_pci_enable(dev);
+	if (result)
+		goto out;
+
+	result = nvme_pci_configure_admin_queue(dev);
+	if (result)
+		goto out;
+
+	/*
+	 * Limit the max command size to prevent iod->sg allocations going
+	 * over a single page.
+	 */
+	dev->ctrl.max_hw_sectors = NVME_MAX_KB_SZ << 1;
+
+	result = nvme_init_identify(&dev->ctrl);
+	if (result)
+		goto out;
+
+	result = nvme_setup_io_queues(dev);
+	if (result) {
+		dev_err(dev->ctrl.dev, "IO queues not created\n");
+		goto out;
+	}
+
+	nvme_start_ctrl(&dev->ctrl);
+out:
+	return;
+}
+
+static int nvme_pci_reg_read32(struct nvme_ctrl *ctrl, u32 off, u32 *val)
+{
+	*val = readl(to_nvme_dev(ctrl)->bar + off);
+	return 0;
+}
+
+static int nvme_pci_reg_write32(struct nvme_ctrl *ctrl, u32 off, u32 val)
+{
+	writel(val, to_nvme_dev(ctrl)->bar + off);
+	return 0;
+}
+
+static int nvme_pci_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
+{
+	*val = readq(to_nvme_dev(ctrl)->bar + off);
+	return 0;
+}
+
+static const struct nvme_ctrl_ops nvme_pci_ctrl_ops = {
+	.reg_read32		= nvme_pci_reg_read32,
+	.reg_write32		= nvme_pci_reg_write32,
+	.reg_read64		= nvme_pci_reg_read64,
+	.submit_sync_cmd	= nvme_pci_submit_sync_cmd,
+};
+
+static void nvme_dev_map(struct nvme_dev *dev)
+{
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
+
+	dev->bar = pci_iomap(pdev, 0);
+}
+
+static void nvme_delete_queue(struct nvme_queue *nvmeq, u8 opcode)
+{
+	int ret;
+	ret = adapter_delete_queue(nvmeq->dev, opcode, nvmeq->qid);
+	if (ret < 0)
+		dev_err(nvmeq->dev->dev, "%s: %s\n", __func__,
+			strerror(-ret));
+	else if (ret)
+		dev_err(nvmeq->dev->dev,
+			"%s: status code type: %xh, status code %02xh\n",
+			__func__, (ret >> 8) & 0xf, ret & 0xff);
+}
+
+static void nvme_disable_io_queues(struct nvme_dev *dev)
+{
+	int i, queues = dev->online_queues - 1;
+
+	for (i = queues; i > 0; i--) {
+		nvme_delete_queue(&dev->queues[i], nvme_admin_delete_sq);
+		nvme_delete_queue(&dev->queues[i], nvme_admin_delete_cq);
+	}
+}
+
+static void nvme_disable_admin_queue(struct nvme_dev *dev)
+{
+	struct nvme_queue *nvmeq = &dev->queues[0];
+	u16 start, end;
+
+	nvme_shutdown_ctrl(&dev->ctrl);
+	nvme_process_cq(nvmeq, &start, &end, -1);
+	nvme_complete_cqes(nvmeq, start, end);
+}
+
+static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct nvme_dev *dev;
+	int result;
+
+	dev = xzalloc(sizeof(*dev));
+	dev->dev = &pdev->dev;
+	pdev->dev.priv = dev;
+
+	nvme_dev_map(dev);
+	result = nvme_init_ctrl(&dev->ctrl, &pdev->dev, &nvme_pci_ctrl_ops);
+	if (result)
+		return result;
+
+	nvme_reset_work(dev);
+
+	return 0;
+}
+
+static void nvme_remove(struct pci_dev *pdev)
+{
+	struct nvme_dev *dev = pdev->dev.priv;
+	bool dead = true;
+
+	u32 csts = readl(dev->bar + NVME_REG_CSTS);
+
+	dead = !!((csts & NVME_CSTS_CFS) || !(csts & NVME_CSTS_RDY));
+
+	if (!dead && dev->ctrl.queue_count > 0) {
+		nvme_disable_io_queues(dev);
+		nvme_disable_admin_queue(dev);
+	}
+}
+
+static const struct pci_device_id nvme_id_table[] = {
+	{ PCI_DEVICE_CLASS(PCI_CLASS_STORAGE_EXPRESS, PCI_ANY_ID) },
+	{ 0, },
+};
+
+static struct pci_driver nvme_driver = {
+	.name		= "nvme",
+	.id_table	= nvme_id_table,
+	.probe		= nvme_probe,
+	.remove		= nvme_remove,
+};
+device_pci_driver(nvme_driver);
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
new file mode 100644
index 000000000..818dbe933
--- /dev/null
+++ b/include/linux/nvme.h
@@ -0,0 +1,1271 @@
+/*
+ * Definitions for the NVM Express interface
+ * Copyright (c) 2011-2014, Intel Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ */
+
+#ifndef _LINUX_NVME_H
+#define _LINUX_NVME_H
+
+#include <linux/types.h>
+#include <linux/uuid.h>
+
+/* NQN names in commands fields specified one size */
+#define NVMF_NQN_FIELD_LEN	256
+
+/* However the max length of a qualified name is another size */
+#define NVMF_NQN_SIZE		223
+
+#define NVMF_TRSVCID_SIZE	32
+#define NVMF_TRADDR_SIZE	256
+#define NVMF_TSAS_SIZE		256
+
+#define NVME_DISC_SUBSYS_NAME	"nqn.2014-08.org.nvmexpress.discovery"
+
+#define NVME_RDMA_IP_PORT	4420
+
+#define NVME_NSID_ALL		0xffffffff
+
+enum nvme_subsys_type {
+	NVME_NQN_DISC	= 1,		/* Discovery type target subsystem */
+	NVME_NQN_NVME	= 2,		/* NVME type target subsystem */
+};
+
+/* Address Family codes for Discovery Log Page entry ADRFAM field */
+enum {
+	NVMF_ADDR_FAMILY_PCI	= 0,	/* PCIe */
+	NVMF_ADDR_FAMILY_IP4	= 1,	/* IP4 */
+	NVMF_ADDR_FAMILY_IP6	= 2,	/* IP6 */
+	NVMF_ADDR_FAMILY_IB	= 3,	/* InfiniBand */
+	NVMF_ADDR_FAMILY_FC	= 4,	/* Fibre Channel */
+};
+
+/* Transport Type codes for Discovery Log Page entry TRTYPE field */
+enum {
+	NVMF_TRTYPE_RDMA	= 1,	/* RDMA */
+	NVMF_TRTYPE_FC		= 2,	/* Fibre Channel */
+	NVMF_TRTYPE_LOOP	= 254,	/* Reserved for host usage */
+	NVMF_TRTYPE_MAX,
+};
+
+/* Transport Requirements codes for Discovery Log Page entry TREQ field */
+enum {
+	NVMF_TREQ_NOT_SPECIFIED	= 0,	/* Not specified */
+	NVMF_TREQ_REQUIRED	= 1,	/* Required */
+	NVMF_TREQ_NOT_REQUIRED	= 2,	/* Not Required */
+};
+
+/* RDMA QP Service Type codes for Discovery Log Page entry TSAS
+ * RDMA_QPTYPE field
+ */
+enum {
+	NVMF_RDMA_QPTYPE_CONNECTED	= 1, /* Reliable Connected */
+	NVMF_RDMA_QPTYPE_DATAGRAM	= 2, /* Reliable Datagram */
+};
+
+/* RDMA QP Service Type codes for Discovery Log Page entry TSAS
+ * RDMA_QPTYPE field
+ */
+enum {
+	NVMF_RDMA_PRTYPE_NOT_SPECIFIED	= 1, /* No Provider Specified */
+	NVMF_RDMA_PRTYPE_IB		= 2, /* InfiniBand */
+	NVMF_RDMA_PRTYPE_ROCE		= 3, /* InfiniBand RoCE */
+	NVMF_RDMA_PRTYPE_ROCEV2		= 4, /* InfiniBand RoCEV2 */
+	NVMF_RDMA_PRTYPE_IWARP		= 5, /* IWARP */
+};
+
+/* RDMA Connection Management Service Type codes for Discovery Log Page
+ * entry TSAS RDMA_CMS field
+ */
+enum {
+	NVMF_RDMA_CMS_RDMA_CM	= 1, /* Sockets based endpoint addressing */
+};
+
+#define NVME_AQ_DEPTH		32
+#define NVME_NR_AEN_COMMANDS	1
+#define NVME_AQ_BLK_MQ_DEPTH	(NVME_AQ_DEPTH - NVME_NR_AEN_COMMANDS)
+
+/*
+ * Subtract one to leave an empty queue entry for 'Full Queue' condition. See
+ * NVM-Express 1.2 specification, section 4.1.2.
+ */
+#define NVME_AQ_MQ_TAG_DEPTH	(NVME_AQ_BLK_MQ_DEPTH - 1)
+
+enum {
+	NVME_REG_CAP	= 0x0000,	/* Controller Capabilities */
+	NVME_REG_VS	= 0x0008,	/* Version */
+	NVME_REG_INTMS	= 0x000c,	/* Interrupt Mask Set */
+	NVME_REG_INTMC	= 0x0010,	/* Interrupt Mask Clear */
+	NVME_REG_CC	= 0x0014,	/* Controller Configuration */
+	NVME_REG_CSTS	= 0x001c,	/* Controller Status */
+	NVME_REG_NSSR	= 0x0020,	/* NVM Subsystem Reset */
+	NVME_REG_AQA	= 0x0024,	/* Admin Queue Attributes */
+	NVME_REG_ASQ	= 0x0028,	/* Admin SQ Base Address */
+	NVME_REG_ACQ	= 0x0030,	/* Admin CQ Base Address */
+	NVME_REG_CMBLOC = 0x0038,	/* Controller Memory Buffer Location */
+	NVME_REG_CMBSZ	= 0x003c,	/* Controller Memory Buffer Size */
+	NVME_REG_DBS	= 0x1000,	/* SQ 0 Tail Doorbell */
+};
+
+#define NVME_CAP_MQES(cap)	((cap) & 0xffff)
+#define NVME_CAP_TIMEOUT(cap)	(((cap) >> 24) & 0xff)
+#define NVME_CAP_STRIDE(cap)	(((cap) >> 32) & 0xf)
+#define NVME_CAP_NSSRC(cap)	(((cap) >> 36) & 0x1)
+#define NVME_CAP_MPSMIN(cap)	(((cap) >> 48) & 0xf)
+#define NVME_CAP_MPSMAX(cap)	(((cap) >> 52) & 0xf)
+
+#define NVME_CMB_BIR(cmbloc)	((cmbloc) & 0x7)
+#define NVME_CMB_OFST(cmbloc)	(((cmbloc) >> 12) & 0xfffff)
+
+enum {
+	NVME_CMBSZ_SQS		= 1 << 0,
+	NVME_CMBSZ_CQS		= 1 << 1,
+	NVME_CMBSZ_LISTS	= 1 << 2,
+	NVME_CMBSZ_RDS		= 1 << 3,
+	NVME_CMBSZ_WDS		= 1 << 4,
+
+	NVME_CMBSZ_SZ_SHIFT	= 12,
+	NVME_CMBSZ_SZ_MASK	= 0xfffff,
+
+	NVME_CMBSZ_SZU_SHIFT	= 8,
+	NVME_CMBSZ_SZU_MASK	= 0xf,
+};
+
+/*
+ * Submission and Completion Queue Entry Sizes for the NVM command set.
+ * (In bytes and specified as a power of two (2^n)).
+ */
+#define NVME_NVM_IOSQES		6
+#define NVME_NVM_IOCQES		4
+
+enum {
+	NVME_CC_ENABLE		= 1 << 0,
+	NVME_CC_CSS_NVM		= 0 << 4,
+	NVME_CC_EN_SHIFT	= 0,
+	NVME_CC_CSS_SHIFT	= 4,
+	NVME_CC_MPS_SHIFT	= 7,
+	NVME_CC_AMS_SHIFT	= 11,
+	NVME_CC_SHN_SHIFT	= 14,
+	NVME_CC_IOSQES_SHIFT	= 16,
+	NVME_CC_IOCQES_SHIFT	= 20,
+	NVME_CC_AMS_RR		= 0 << NVME_CC_AMS_SHIFT,
+	NVME_CC_AMS_WRRU	= 1 << NVME_CC_AMS_SHIFT,
+	NVME_CC_AMS_VS		= 7 << NVME_CC_AMS_SHIFT,
+	NVME_CC_SHN_NONE	= 0 << NVME_CC_SHN_SHIFT,
+	NVME_CC_SHN_NORMAL	= 1 << NVME_CC_SHN_SHIFT,
+	NVME_CC_SHN_ABRUPT	= 2 << NVME_CC_SHN_SHIFT,
+	NVME_CC_SHN_MASK	= 3 << NVME_CC_SHN_SHIFT,
+	NVME_CC_IOSQES		= NVME_NVM_IOSQES << NVME_CC_IOSQES_SHIFT,
+	NVME_CC_IOCQES		= NVME_NVM_IOCQES << NVME_CC_IOCQES_SHIFT,
+	NVME_CSTS_RDY		= 1 << 0,
+	NVME_CSTS_CFS		= 1 << 1,
+	NVME_CSTS_NSSRO		= 1 << 4,
+	NVME_CSTS_PP		= 1 << 5,
+	NVME_CSTS_SHST_NORMAL	= 0 << 2,
+	NVME_CSTS_SHST_OCCUR	= 1 << 2,
+	NVME_CSTS_SHST_CMPLT	= 2 << 2,
+	NVME_CSTS_SHST_MASK	= 3 << 2,
+};
+
+struct nvme_id_power_state {
+	__le16			max_power;	/* centiwatts */
+	__u8			rsvd2;
+	__u8			flags;
+	__le32			entry_lat;	/* microseconds */
+	__le32			exit_lat;	/* microseconds */
+	__u8			read_tput;
+	__u8			read_lat;
+	__u8			write_tput;
+	__u8			write_lat;
+	__le16			idle_power;
+	__u8			idle_scale;
+	__u8			rsvd19;
+	__le16			active_power;
+	__u8			active_work_scale;
+	__u8			rsvd23[9];
+};
+
+enum {
+	NVME_PS_FLAGS_MAX_POWER_SCALE	= 1 << 0,
+	NVME_PS_FLAGS_NON_OP_STATE	= 1 << 1,
+};
+
+struct nvme_id_ctrl {
+	__le16			vid;
+	__le16			ssvid;
+	char			sn[20];
+	char			mn[40];
+	char			fr[8];
+	__u8			rab;
+	__u8			ieee[3];
+	__u8			cmic;
+	__u8			mdts;
+	__le16			cntlid;
+	__le32			ver;
+	__le32			rtd3r;
+	__le32			rtd3e;
+	__le32			oaes;
+	__le32			ctratt;
+	__u8			rsvd100[156];
+	__le16			oacs;
+	__u8			acl;
+	__u8			aerl;
+	__u8			frmw;
+	__u8			lpa;
+	__u8			elpe;
+	__u8			npss;
+	__u8			avscc;
+	__u8			apsta;
+	__le16			wctemp;
+	__le16			cctemp;
+	__le16			mtfa;
+	__le32			hmpre;
+	__le32			hmmin;
+	__u8			tnvmcap[16];
+	__u8			unvmcap[16];
+	__le32			rpmbs;
+	__le16			edstt;
+	__u8			dsto;
+	__u8			fwug;
+	__le16			kas;
+	__le16			hctma;
+	__le16			mntmt;
+	__le16			mxtmt;
+	__le32			sanicap;
+	__le32			hmminds;
+	__le16			hmmaxd;
+	__u8			rsvd338[4];
+	__u8			anatt;
+	__u8			anacap;
+	__le32			anagrpmax;
+	__le32			nanagrpid;
+	__u8			rsvd352[160];
+	__u8			sqes;
+	__u8			cqes;
+	__le16			maxcmd;
+	__le32			nn;
+	__le16			oncs;
+	__le16			fuses;
+	__u8			fna;
+	__u8			vwc;
+	__le16			awun;
+	__le16			awupf;
+	__u8			nvscc;
+	__u8			nwpc;
+	__le16			acwu;
+	__u8			rsvd534[2];
+	__le32			sgls;
+	__le32			mnan;
+	__u8			rsvd544[224];
+	char			subnqn[256];
+	__u8			rsvd1024[768];
+	__le32			ioccsz;
+	__le32			iorcsz;
+	__le16			icdoff;
+	__u8			ctrattr;
+	__u8			msdbd;
+	__u8			rsvd1804[244];
+	struct nvme_id_power_state	psd[32];
+	__u8			vs[1024];
+};
+
+enum {
+	NVME_CTRL_ONCS_COMPARE			= 1 << 0,
+	NVME_CTRL_ONCS_WRITE_UNCORRECTABLE	= 1 << 1,
+	NVME_CTRL_ONCS_DSM			= 1 << 2,
+	NVME_CTRL_ONCS_WRITE_ZEROES		= 1 << 3,
+	NVME_CTRL_ONCS_TIMESTAMP		= 1 << 6,
+	NVME_CTRL_VWC_PRESENT			= 1 << 0,
+	NVME_CTRL_OACS_SEC_SUPP                 = 1 << 0,
+	NVME_CTRL_OACS_DIRECTIVES		= 1 << 5,
+	NVME_CTRL_OACS_DBBUF_SUPP		= 1 << 8,
+	NVME_CTRL_LPA_CMD_EFFECTS_LOG		= 1 << 1,
+};
+
+struct nvme_lbaf {
+	__le16			ms;
+	__u8			ds;
+	__u8			rp;
+};
+
+struct nvme_id_ns {
+	__le64			nsze;
+	__le64			ncap;
+	__le64			nuse;
+	__u8			nsfeat;
+	__u8			nlbaf;
+	__u8			flbas;
+	__u8			mc;
+	__u8			dpc;
+	__u8			dps;
+	__u8			nmic;
+	__u8			rescap;
+	__u8			fpi;
+	__u8			rsvd33;
+	__le16			nawun;
+	__le16			nawupf;
+	__le16			nacwu;
+	__le16			nabsn;
+	__le16			nabo;
+	__le16			nabspf;
+	__le16			noiob;
+	__u8			nvmcap[16];
+	__u8			rsvd64[28];
+	__le32			anagrpid;
+	__u8			rsvd96[3];
+	__u8			nsattr;
+	__u8			rsvd100[4];
+	__u8			nguid[16];
+	__u8			eui64[8];
+	struct nvme_lbaf	lbaf[16];
+	__u8			rsvd192[192];
+	__u8			vs[3712];
+};
+
+enum {
+	NVME_ID_CNS_NS			= 0x00,
+	NVME_ID_CNS_CTRL		= 0x01,
+	NVME_ID_CNS_NS_ACTIVE_LIST	= 0x02,
+	NVME_ID_CNS_NS_DESC_LIST	= 0x03,
+	NVME_ID_CNS_NS_PRESENT_LIST	= 0x10,
+	NVME_ID_CNS_NS_PRESENT		= 0x11,
+	NVME_ID_CNS_CTRL_NS_LIST	= 0x12,
+	NVME_ID_CNS_CTRL_LIST		= 0x13,
+};
+
+enum {
+	NVME_DIR_IDENTIFY		= 0x00,
+	NVME_DIR_STREAMS		= 0x01,
+	NVME_DIR_SND_ID_OP_ENABLE	= 0x01,
+	NVME_DIR_SND_ST_OP_REL_ID	= 0x01,
+	NVME_DIR_SND_ST_OP_REL_RSC	= 0x02,
+	NVME_DIR_RCV_ID_OP_PARAM	= 0x01,
+	NVME_DIR_RCV_ST_OP_PARAM	= 0x01,
+	NVME_DIR_RCV_ST_OP_STATUS	= 0x02,
+	NVME_DIR_RCV_ST_OP_RESOURCE	= 0x03,
+	NVME_DIR_ENDIR			= 0x01,
+};
+
+enum {
+	NVME_NS_FEAT_THIN	= 1 << 0,
+	NVME_NS_FLBAS_LBA_MASK	= 0xf,
+	NVME_NS_FLBAS_META_EXT	= 0x10,
+	NVME_LBAF_RP_BEST	= 0,
+	NVME_LBAF_RP_BETTER	= 1,
+	NVME_LBAF_RP_GOOD	= 2,
+	NVME_LBAF_RP_DEGRADED	= 3,
+	NVME_NS_DPC_PI_LAST	= 1 << 4,
+	NVME_NS_DPC_PI_FIRST	= 1 << 3,
+	NVME_NS_DPC_PI_TYPE3	= 1 << 2,
+	NVME_NS_DPC_PI_TYPE2	= 1 << 1,
+	NVME_NS_DPC_PI_TYPE1	= 1 << 0,
+	NVME_NS_DPS_PI_FIRST	= 1 << 3,
+	NVME_NS_DPS_PI_MASK	= 0x7,
+	NVME_NS_DPS_PI_TYPE1	= 1,
+	NVME_NS_DPS_PI_TYPE2	= 2,
+	NVME_NS_DPS_PI_TYPE3	= 3,
+};
+
+struct nvme_ns_id_desc {
+	__u8 nidt;
+	__u8 nidl;
+	__le16 reserved;
+};
+
+#define NVME_NIDT_EUI64_LEN	8
+#define NVME_NIDT_NGUID_LEN	16
+#define NVME_NIDT_UUID_LEN	16
+
+enum {
+	NVME_NIDT_EUI64		= 0x01,
+	NVME_NIDT_NGUID		= 0x02,
+	NVME_NIDT_UUID		= 0x03,
+};
+
+struct nvme_smart_log {
+	__u8			critical_warning;
+	__u8			temperature[2];
+	__u8			avail_spare;
+	__u8			spare_thresh;
+	__u8			percent_used;
+	__u8			rsvd6[26];
+	__u8			data_units_read[16];
+	__u8			data_units_written[16];
+	__u8			host_reads[16];
+	__u8			host_writes[16];
+	__u8			ctrl_busy_time[16];
+	__u8			power_cycles[16];
+	__u8			power_on_hours[16];
+	__u8			unsafe_shutdowns[16];
+	__u8			media_errors[16];
+	__u8			num_err_log_entries[16];
+	__le32			warning_temp_time;
+	__le32			critical_comp_time;
+	__le16			temp_sensor[8];
+	__u8			rsvd216[296];
+};
+
+struct nvme_fw_slot_info_log {
+	__u8			afi;
+	__u8			rsvd1[7];
+	__le64			frs[7];
+	__u8			rsvd64[448];
+};
+
+enum {
+	NVME_CMD_EFFECTS_CSUPP		= 1 << 0,
+	NVME_CMD_EFFECTS_LBCC		= 1 << 1,
+	NVME_CMD_EFFECTS_NCC		= 1 << 2,
+	NVME_CMD_EFFECTS_NIC		= 1 << 3,
+	NVME_CMD_EFFECTS_CCC		= 1 << 4,
+	NVME_CMD_EFFECTS_CSE_MASK	= 3 << 16,
+};
+
+struct nvme_effects_log {
+	__le32 acs[256];
+	__le32 iocs[256];
+	__u8   resv[2048];
+};
+
+enum nvme_ana_state {
+	NVME_ANA_OPTIMIZED		= 0x01,
+	NVME_ANA_NONOPTIMIZED		= 0x02,
+	NVME_ANA_INACCESSIBLE		= 0x03,
+	NVME_ANA_PERSISTENT_LOSS	= 0x04,
+	NVME_ANA_CHANGE			= 0x0f,
+};
+
+struct nvme_ana_group_desc {
+	__le32	grpid;
+	__le32	nnsids;
+	__le64	chgcnt;
+	__u8	state;
+	__u8	rsvd17[15];
+	__le32	nsids[];
+};
+
+/* flag for the log specific field of the ANA log */
+#define NVME_ANA_LOG_RGO	(1 << 0)
+
+struct nvme_ana_rsp_hdr {
+	__le64	chgcnt;
+	__le16	ngrps;
+	__le16	rsvd10[3];
+};
+
+enum {
+	NVME_SMART_CRIT_SPARE		= 1 << 0,
+	NVME_SMART_CRIT_TEMPERATURE	= 1 << 1,
+	NVME_SMART_CRIT_RELIABILITY	= 1 << 2,
+	NVME_SMART_CRIT_MEDIA		= 1 << 3,
+	NVME_SMART_CRIT_VOLATILE_MEMORY	= 1 << 4,
+};
+
+enum {
+	NVME_AER_ERROR			= 0,
+	NVME_AER_SMART			= 1,
+	NVME_AER_NOTICE			= 2,
+	NVME_AER_CSS			= 6,
+	NVME_AER_VS			= 7,
+};
+
+enum {
+	NVME_AER_NOTICE_NS_CHANGED	= 0x00,
+	NVME_AER_NOTICE_FW_ACT_STARTING = 0x01,
+	NVME_AER_NOTICE_ANA		= 0x03,
+};
+
+enum {
+	NVME_AEN_CFG_NS_ATTR		= 1 << 8,
+	NVME_AEN_CFG_FW_ACT		= 1 << 9,
+	NVME_AEN_CFG_ANA_CHANGE		= 1 << 11,
+};
+
+struct nvme_lba_range_type {
+	__u8			type;
+	__u8			attributes;
+	__u8			rsvd2[14];
+	__u64			slba;
+	__u64			nlb;
+	__u8			guid[16];
+	__u8			rsvd48[16];
+};
+
+enum {
+	NVME_LBART_TYPE_FS	= 0x01,
+	NVME_LBART_TYPE_RAID	= 0x02,
+	NVME_LBART_TYPE_CACHE	= 0x03,
+	NVME_LBART_TYPE_SWAP	= 0x04,
+
+	NVME_LBART_ATTRIB_TEMP	= 1 << 0,
+	NVME_LBART_ATTRIB_HIDE	= 1 << 1,
+};
+
+struct nvme_reservation_status {
+	__le32	gen;
+	__u8	rtype;
+	__u8	regctl[2];
+	__u8	resv5[2];
+	__u8	ptpls;
+	__u8	resv10[13];
+	struct {
+		__le16	cntlid;
+		__u8	rcsts;
+		__u8	resv3[5];
+		__le64	hostid;
+		__le64	rkey;
+	} regctl_ds[];
+};
+
+enum nvme_async_event_type {
+	NVME_AER_TYPE_ERROR	= 0,
+	NVME_AER_TYPE_SMART	= 1,
+	NVME_AER_TYPE_NOTICE	= 2,
+};
+
+/* I/O commands */
+
+enum nvme_opcode {
+	nvme_cmd_flush		= 0x00,
+	nvme_cmd_write		= 0x01,
+	nvme_cmd_read		= 0x02,
+	nvme_cmd_write_uncor	= 0x04,
+	nvme_cmd_compare	= 0x05,
+	nvme_cmd_write_zeroes	= 0x08,
+	nvme_cmd_dsm		= 0x09,
+	nvme_cmd_resv_register	= 0x0d,
+	nvme_cmd_resv_report	= 0x0e,
+	nvme_cmd_resv_acquire	= 0x11,
+	nvme_cmd_resv_release	= 0x15,
+};
+
+/*
+ * Descriptor subtype - lower 4 bits of nvme_(keyed_)sgl_desc identifier
+ *
+ * @NVME_SGL_FMT_ADDRESS:     absolute address of the data block
+ * @NVME_SGL_FMT_OFFSET:      relative offset of the in-capsule data block
+ * @NVME_SGL_FMT_TRANSPORT_A: transport defined format, value 0xA
+ * @NVME_SGL_FMT_INVALIDATE:  RDMA transport specific remote invalidation
+ *                            request subtype
+ */
+enum {
+	NVME_SGL_FMT_ADDRESS		= 0x00,
+	NVME_SGL_FMT_OFFSET		= 0x01,
+	NVME_SGL_FMT_TRANSPORT_A	= 0x0A,
+	NVME_SGL_FMT_INVALIDATE		= 0x0f,
+};
+
+/*
+ * Descriptor type - upper 4 bits of nvme_(keyed_)sgl_desc identifier
+ *
+ * For struct nvme_sgl_desc:
+ *   @NVME_SGL_FMT_DATA_DESC:		data block descriptor
+ *   @NVME_SGL_FMT_SEG_DESC:		sgl segment descriptor
+ *   @NVME_SGL_FMT_LAST_SEG_DESC:	last sgl segment descriptor
+ *
+ * For struct nvme_keyed_sgl_desc:
+ *   @NVME_KEY_SGL_FMT_DATA_DESC:	keyed data block descriptor
+ *
+ * Transport-specific SGL types:
+ *   @NVME_TRANSPORT_SGL_DATA_DESC:	Transport SGL data dlock descriptor
+ */
+enum {
+	NVME_SGL_FMT_DATA_DESC		= 0x00,
+	NVME_SGL_FMT_SEG_DESC		= 0x02,
+	NVME_SGL_FMT_LAST_SEG_DESC	= 0x03,
+	NVME_KEY_SGL_FMT_DATA_DESC	= 0x04,
+	NVME_TRANSPORT_SGL_DATA_DESC	= 0x05,
+};
+
+struct nvme_sgl_desc {
+	__le64	addr;
+	__le32	length;
+	__u8	rsvd[3];
+	__u8	type;
+};
+
+struct nvme_keyed_sgl_desc {
+	__le64	addr;
+	__u8	length[3];
+	__u8	key[4];
+	__u8	type;
+};
+
+union nvme_data_ptr {
+	struct {
+		__le64	prp1;
+		__le64	prp2;
+	};
+	struct nvme_sgl_desc	sgl;
+	struct nvme_keyed_sgl_desc ksgl;
+};
+
+/*
+ * Lowest two bits of our flags field (FUSE field in the spec):
+ *
+ * @NVME_CMD_FUSE_FIRST:   Fused Operation, first command
+ * @NVME_CMD_FUSE_SECOND:  Fused Operation, second command
+ *
+ * Highest two bits in our flags field (PSDT field in the spec):
+ *
+ * @NVME_CMD_PSDT_SGL_METABUF:	Use SGLS for this transfer,
+ *	If used, MPTR contains addr of single physical buffer (byte aligned).
+ * @NVME_CMD_PSDT_SGL_METASEG:	Use SGLS for this transfer,
+ *	If used, MPTR contains an address of an SGL segment containing
+ *	exactly 1 SGL descriptor (qword aligned).
+ */
+enum {
+	NVME_CMD_FUSE_FIRST	= (1 << 0),
+	NVME_CMD_FUSE_SECOND	= (1 << 1),
+
+	NVME_CMD_SGL_METABUF	= (1 << 6),
+	NVME_CMD_SGL_METASEG	= (1 << 7),
+	NVME_CMD_SGL_ALL	= NVME_CMD_SGL_METABUF | NVME_CMD_SGL_METASEG,
+};
+
+struct nvme_common_command {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__le32			nsid;
+	__le32			cdw2[2];
+	__le64			metadata;
+	union nvme_data_ptr	dptr;
+	__le32			cdw10[6];
+};
+
+struct nvme_rw_command {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__le32			nsid;
+	__u64			rsvd2;
+	__le64			metadata;
+	union nvme_data_ptr	dptr;
+	__le64			slba;
+	__le16			length;
+	__le16			control;
+	__le32			dsmgmt;
+	__le32			reftag;
+	__le16			apptag;
+	__le16			appmask;
+};
+
+enum {
+	NVME_RW_LR			= 1 << 15,
+	NVME_RW_FUA			= 1 << 14,
+	NVME_RW_DSM_FREQ_UNSPEC		= 0,
+	NVME_RW_DSM_FREQ_TYPICAL	= 1,
+	NVME_RW_DSM_FREQ_RARE		= 2,
+	NVME_RW_DSM_FREQ_READS		= 3,
+	NVME_RW_DSM_FREQ_WRITES		= 4,
+	NVME_RW_DSM_FREQ_RW		= 5,
+	NVME_RW_DSM_FREQ_ONCE		= 6,
+	NVME_RW_DSM_FREQ_PREFETCH	= 7,
+	NVME_RW_DSM_FREQ_TEMP		= 8,
+	NVME_RW_DSM_LATENCY_NONE	= 0 << 4,
+	NVME_RW_DSM_LATENCY_IDLE	= 1 << 4,
+	NVME_RW_DSM_LATENCY_NORM	= 2 << 4,
+	NVME_RW_DSM_LATENCY_LOW		= 3 << 4,
+	NVME_RW_DSM_SEQ_REQ		= 1 << 6,
+	NVME_RW_DSM_COMPRESSED		= 1 << 7,
+	NVME_RW_PRINFO_PRCHK_REF	= 1 << 10,
+	NVME_RW_PRINFO_PRCHK_APP	= 1 << 11,
+	NVME_RW_PRINFO_PRCHK_GUARD	= 1 << 12,
+	NVME_RW_PRINFO_PRACT		= 1 << 13,
+	NVME_RW_DTYPE_STREAMS		= 1 << 4,
+};
+
+struct nvme_dsm_cmd {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__le32			nsid;
+	__u64			rsvd2[2];
+	union nvme_data_ptr	dptr;
+	__le32			nr;
+	__le32			attributes;
+	__u32			rsvd12[4];
+};
+
+enum {
+	NVME_DSMGMT_IDR		= 1 << 0,
+	NVME_DSMGMT_IDW		= 1 << 1,
+	NVME_DSMGMT_AD		= 1 << 2,
+};
+
+#define NVME_DSM_MAX_RANGES	256
+
+struct nvme_dsm_range {
+	__le32			cattr;
+	__le32			nlb;
+	__le64			slba;
+};
+
+struct nvme_write_zeroes_cmd {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__le32			nsid;
+	__u64			rsvd2;
+	__le64			metadata;
+	union nvme_data_ptr	dptr;
+	__le64			slba;
+	__le16			length;
+	__le16			control;
+	__le32			dsmgmt;
+	__le32			reftag;
+	__le16			apptag;
+	__le16			appmask;
+};
+
+/* Features */
+
+struct nvme_feat_auto_pst {
+	__le64 entries[32];
+};
+
+enum {
+	NVME_HOST_MEM_ENABLE	= (1 << 0),
+	NVME_HOST_MEM_RETURN	= (1 << 1),
+};
+
+/* Admin commands */
+
+enum nvme_admin_opcode {
+	nvme_admin_delete_sq		= 0x00,
+	nvme_admin_create_sq		= 0x01,
+	nvme_admin_get_log_page		= 0x02,
+	nvme_admin_delete_cq		= 0x04,
+	nvme_admin_create_cq		= 0x05,
+	nvme_admin_identify		= 0x06,
+	nvme_admin_abort_cmd		= 0x08,
+	nvme_admin_set_features		= 0x09,
+	nvme_admin_get_features		= 0x0a,
+	nvme_admin_async_event		= 0x0c,
+	nvme_admin_ns_mgmt		= 0x0d,
+	nvme_admin_activate_fw		= 0x10,
+	nvme_admin_download_fw		= 0x11,
+	nvme_admin_ns_attach		= 0x15,
+	nvme_admin_keep_alive		= 0x18,
+	nvme_admin_directive_send	= 0x19,
+	nvme_admin_directive_recv	= 0x1a,
+	nvme_admin_dbbuf		= 0x7C,
+	nvme_admin_format_nvm		= 0x80,
+	nvme_admin_security_send	= 0x81,
+	nvme_admin_security_recv	= 0x82,
+	nvme_admin_sanitize_nvm		= 0x84,
+};
+
+enum {
+	NVME_QUEUE_PHYS_CONTIG	= (1 << 0),
+	NVME_CQ_IRQ_ENABLED	= (1 << 1),
+	NVME_SQ_PRIO_URGENT	= (0 << 1),
+	NVME_SQ_PRIO_HIGH	= (1 << 1),
+	NVME_SQ_PRIO_MEDIUM	= (2 << 1),
+	NVME_SQ_PRIO_LOW	= (3 << 1),
+	NVME_FEAT_ARBITRATION	= 0x01,
+	NVME_FEAT_POWER_MGMT	= 0x02,
+	NVME_FEAT_LBA_RANGE	= 0x03,
+	NVME_FEAT_TEMP_THRESH	= 0x04,
+	NVME_FEAT_ERR_RECOVERY	= 0x05,
+	NVME_FEAT_VOLATILE_WC	= 0x06,
+	NVME_FEAT_NUM_QUEUES	= 0x07,
+	NVME_FEAT_IRQ_COALESCE	= 0x08,
+	NVME_FEAT_IRQ_CONFIG	= 0x09,
+	NVME_FEAT_WRITE_ATOMIC	= 0x0a,
+	NVME_FEAT_ASYNC_EVENT	= 0x0b,
+	NVME_FEAT_AUTO_PST	= 0x0c,
+	NVME_FEAT_HOST_MEM_BUF	= 0x0d,
+	NVME_FEAT_TIMESTAMP	= 0x0e,
+	NVME_FEAT_KATO		= 0x0f,
+	NVME_FEAT_HCTM		= 0x10,
+	NVME_FEAT_NOPSC		= 0x11,
+	NVME_FEAT_RRL		= 0x12,
+	NVME_FEAT_PLM_CONFIG	= 0x13,
+	NVME_FEAT_PLM_WINDOW	= 0x14,
+	NVME_FEAT_SW_PROGRESS	= 0x80,
+	NVME_FEAT_HOST_ID	= 0x81,
+	NVME_FEAT_RESV_MASK	= 0x82,
+	NVME_FEAT_RESV_PERSIST	= 0x83,
+	NVME_FEAT_WRITE_PROTECT	= 0x84,
+	NVME_LOG_ERROR		= 0x01,
+	NVME_LOG_SMART		= 0x02,
+	NVME_LOG_FW_SLOT	= 0x03,
+	NVME_LOG_CHANGED_NS	= 0x04,
+	NVME_LOG_CMD_EFFECTS	= 0x05,
+	NVME_LOG_ANA		= 0x0c,
+	NVME_LOG_DISC		= 0x70,
+	NVME_LOG_RESERVATION	= 0x80,
+	NVME_FWACT_REPL		= (0 << 3),
+	NVME_FWACT_REPL_ACTV	= (1 << 3),
+	NVME_FWACT_ACTV		= (2 << 3),
+};
+
+/* NVMe Namespace Write Protect State */
+enum {
+	NVME_NS_NO_WRITE_PROTECT = 0,
+	NVME_NS_WRITE_PROTECT,
+	NVME_NS_WRITE_PROTECT_POWER_CYCLE,
+	NVME_NS_WRITE_PROTECT_PERMANENT,
+};
+
+#define NVME_MAX_CHANGED_NAMESPACES	1024
+
+struct nvme_identify {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__le32			nsid;
+	__u64			rsvd2[2];
+	union nvme_data_ptr	dptr;
+	__u8			cns;
+	__u8			rsvd3;
+	__le16			ctrlid;
+	__u32			rsvd11[5];
+};
+
+#define NVME_IDENTIFY_DATA_SIZE 4096
+
+struct nvme_features {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__le32			nsid;
+	__u64			rsvd2[2];
+	union nvme_data_ptr	dptr;
+	__le32			fid;
+	__le32			dword11;
+	__le32                  dword12;
+	__le32                  dword13;
+	__le32                  dword14;
+	__le32                  dword15;
+};
+
+struct nvme_host_mem_buf_desc {
+	__le64			addr;
+	__le32			size;
+	__u32			rsvd;
+};
+
+struct nvme_create_cq {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__u32			rsvd1[5];
+	__le64			prp1;
+	__u64			rsvd8;
+	__le16			cqid;
+	__le16			qsize;
+	__le16			cq_flags;
+	__le16			irq_vector;
+	__u32			rsvd12[4];
+};
+
+struct nvme_create_sq {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__u32			rsvd1[5];
+	__le64			prp1;
+	__u64			rsvd8;
+	__le16			sqid;
+	__le16			qsize;
+	__le16			sq_flags;
+	__le16			cqid;
+	__u32			rsvd12[4];
+};
+
+struct nvme_delete_queue {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__u32			rsvd1[9];
+	__le16			qid;
+	__u16			rsvd10;
+	__u32			rsvd11[5];
+};
+
+struct nvme_abort_cmd {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__u32			rsvd1[9];
+	__le16			sqid;
+	__u16			cid;
+	__u32			rsvd11[5];
+};
+
+struct nvme_download_firmware {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__u32			rsvd1[5];
+	union nvme_data_ptr	dptr;
+	__le32			numd;
+	__le32			offset;
+	__u32			rsvd12[4];
+};
+
+struct nvme_format_cmd {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__le32			nsid;
+	__u64			rsvd2[4];
+	__le32			cdw10;
+	__u32			rsvd11[5];
+};
+
+struct nvme_get_log_page_command {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__le32			nsid;
+	__u64			rsvd2[2];
+	union nvme_data_ptr	dptr;
+	__u8			lid;
+	__u8			lsp; /* upper 4 bits reserved */
+	__le16			numdl;
+	__le16			numdu;
+	__u16			rsvd11;
+	__le32			lpol;
+	__le32			lpou;
+	__u32			rsvd14[2];
+};
+
+struct nvme_directive_cmd {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__le32			nsid;
+	__u64			rsvd2[2];
+	union nvme_data_ptr	dptr;
+	__le32			numd;
+	__u8			doper;
+	__u8			dtype;
+	__le16			dspec;
+	__u8			endir;
+	__u8			tdtype;
+	__u16			rsvd15;
+
+	__u32			rsvd16[3];
+};
+
+/*
+ * Fabrics subcommands.
+ */
+enum nvmf_fabrics_opcode {
+	nvme_fabrics_command		= 0x7f,
+};
+
+enum nvmf_capsule_command {
+	nvme_fabrics_type_property_set	= 0x00,
+	nvme_fabrics_type_connect	= 0x01,
+	nvme_fabrics_type_property_get	= 0x04,
+};
+
+struct nvmf_common_command {
+	__u8	opcode;
+	__u8	resv1;
+	__u16	command_id;
+	__u8	fctype;
+	__u8	resv2[35];
+	__u8	ts[24];
+};
+
+/*
+ * The legal cntlid range a NVMe Target will provide.
+ * Note that cntlid of value 0 is considered illegal in the fabrics world.
+ * Devices based on earlier specs did not have the subsystem concept;
+ * therefore, those devices had their cntlid value set to 0 as a result.
+ */
+#define NVME_CNTLID_MIN		1
+#define NVME_CNTLID_MAX		0xffef
+#define NVME_CNTLID_DYNAMIC	0xffff
+
+#define MAX_DISC_LOGS	255
+
+/* Discovery log page entry */
+struct nvmf_disc_rsp_page_entry {
+	__u8		trtype;
+	__u8		adrfam;
+	__u8		subtype;
+	__u8		treq;
+	__le16		portid;
+	__le16		cntlid;
+	__le16		asqsz;
+	__u8		resv8[22];
+	char		trsvcid[NVMF_TRSVCID_SIZE];
+	__u8		resv64[192];
+	char		subnqn[NVMF_NQN_FIELD_LEN];
+	char		traddr[NVMF_TRADDR_SIZE];
+	union tsas {
+		char		common[NVMF_TSAS_SIZE];
+		struct rdma {
+			__u8	qptype;
+			__u8	prtype;
+			__u8	cms;
+			__u8	resv3[5];
+			__u16	pkey;
+			__u8	resv10[246];
+		} rdma;
+	} tsas;
+};
+
+/* Discovery log page header */
+struct nvmf_disc_rsp_page_hdr {
+	__le64		genctr;
+	__le64		numrec;
+	__le16		recfmt;
+	__u8		resv14[1006];
+	struct nvmf_disc_rsp_page_entry entries[0];
+};
+
+struct nvmf_connect_command {
+	__u8		opcode;
+	__u8		resv1;
+	__u16		command_id;
+	__u8		fctype;
+	__u8		resv2[19];
+	union nvme_data_ptr dptr;
+	__le16		recfmt;
+	__le16		qid;
+	__le16		sqsize;
+	__u8		cattr;
+	__u8		resv3;
+	__le32		kato;
+	__u8		resv4[12];
+};
+
+struct nvmf_connect_data {
+	uuid_t		hostid;
+	__le16		cntlid;
+	char		resv4[238];
+	char		subsysnqn[NVMF_NQN_FIELD_LEN];
+	char		hostnqn[NVMF_NQN_FIELD_LEN];
+	char		resv5[256];
+};
+
+struct nvmf_property_set_command {
+	__u8		opcode;
+	__u8		resv1;
+	__u16		command_id;
+	__u8		fctype;
+	__u8		resv2[35];
+	__u8		attrib;
+	__u8		resv3[3];
+	__le32		offset;
+	__le64		value;
+	__u8		resv4[8];
+};
+
+struct nvmf_property_get_command {
+	__u8		opcode;
+	__u8		resv1;
+	__u16		command_id;
+	__u8		fctype;
+	__u8		resv2[35];
+	__u8		attrib;
+	__u8		resv3[3];
+	__le32		offset;
+	__u8		resv4[16];
+};
+
+struct nvme_dbbuf {
+	__u8			opcode;
+	__u8			flags;
+	__u16			command_id;
+	__u32			rsvd1[5];
+	__le64			prp1;
+	__le64			prp2;
+	__u32			rsvd12[6];
+};
+
+struct streams_directive_params {
+	__le16	msl;
+	__le16	nssa;
+	__le16	nsso;
+	__u8	rsvd[10];
+	__le32	sws;
+	__le16	sgs;
+	__le16	nsa;
+	__le16	nso;
+	__u8	rsvd2[6];
+};
+
+struct nvme_command {
+	union {
+		struct nvme_common_command common;
+		struct nvme_rw_command rw;
+		struct nvme_identify identify;
+		struct nvme_features features;
+		struct nvme_create_cq create_cq;
+		struct nvme_create_sq create_sq;
+		struct nvme_delete_queue delete_queue;
+		struct nvme_download_firmware dlfw;
+		struct nvme_format_cmd format;
+		struct nvme_dsm_cmd dsm;
+		struct nvme_write_zeroes_cmd write_zeroes;
+		struct nvme_abort_cmd abort;
+		struct nvme_get_log_page_command get_log_page;
+		struct nvmf_common_command fabrics;
+		struct nvmf_connect_command connect;
+		struct nvmf_property_set_command prop_set;
+		struct nvmf_property_get_command prop_get;
+		struct nvme_dbbuf dbbuf;
+		struct nvme_directive_cmd directive;
+	};
+};
+
+static inline bool nvme_is_write(struct nvme_command *cmd)
+{
+	/*
+	 * What a mess...
+	 *
+	 * Why can't we simply have a Fabrics In and Fabrics out command?
+	 */
+	if (unlikely(cmd->common.opcode == nvme_fabrics_command))
+		return cmd->fabrics.fctype & 1;
+	return cmd->common.opcode & 1;
+}
+
+enum {
+	/*
+	 * Generic Command Status:
+	 */
+	NVME_SC_SUCCESS			= 0x0,
+	NVME_SC_INVALID_OPCODE		= 0x1,
+	NVME_SC_INVALID_FIELD		= 0x2,
+	NVME_SC_CMDID_CONFLICT		= 0x3,
+	NVME_SC_DATA_XFER_ERROR		= 0x4,
+	NVME_SC_POWER_LOSS		= 0x5,
+	NVME_SC_INTERNAL		= 0x6,
+	NVME_SC_ABORT_REQ		= 0x7,
+	NVME_SC_ABORT_QUEUE		= 0x8,
+	NVME_SC_FUSED_FAIL		= 0x9,
+	NVME_SC_FUSED_MISSING		= 0xa,
+	NVME_SC_INVALID_NS		= 0xb,
+	NVME_SC_CMD_SEQ_ERROR		= 0xc,
+	NVME_SC_SGL_INVALID_LAST	= 0xd,
+	NVME_SC_SGL_INVALID_COUNT	= 0xe,
+	NVME_SC_SGL_INVALID_DATA	= 0xf,
+	NVME_SC_SGL_INVALID_METADATA	= 0x10,
+	NVME_SC_SGL_INVALID_TYPE	= 0x11,
+
+	NVME_SC_SGL_INVALID_OFFSET	= 0x16,
+	NVME_SC_SGL_INVALID_SUBTYPE	= 0x17,
+
+	NVME_SC_NS_WRITE_PROTECTED	= 0x20,
+
+	NVME_SC_LBA_RANGE		= 0x80,
+	NVME_SC_CAP_EXCEEDED		= 0x81,
+	NVME_SC_NS_NOT_READY		= 0x82,
+	NVME_SC_RESERVATION_CONFLICT	= 0x83,
+
+	/*
+	 * Command Specific Status:
+	 */
+	NVME_SC_CQ_INVALID		= 0x100,
+	NVME_SC_QID_INVALID		= 0x101,
+	NVME_SC_QUEUE_SIZE		= 0x102,
+	NVME_SC_ABORT_LIMIT		= 0x103,
+	NVME_SC_ABORT_MISSING		= 0x104,
+	NVME_SC_ASYNC_LIMIT		= 0x105,
+	NVME_SC_FIRMWARE_SLOT		= 0x106,
+	NVME_SC_FIRMWARE_IMAGE		= 0x107,
+	NVME_SC_INVALID_VECTOR		= 0x108,
+	NVME_SC_INVALID_LOG_PAGE	= 0x109,
+	NVME_SC_INVALID_FORMAT		= 0x10a,
+	NVME_SC_FW_NEEDS_CONV_RESET	= 0x10b,
+	NVME_SC_INVALID_QUEUE		= 0x10c,
+	NVME_SC_FEATURE_NOT_SAVEABLE	= 0x10d,
+	NVME_SC_FEATURE_NOT_CHANGEABLE	= 0x10e,
+	NVME_SC_FEATURE_NOT_PER_NS	= 0x10f,
+	NVME_SC_FW_NEEDS_SUBSYS_RESET	= 0x110,
+	NVME_SC_FW_NEEDS_RESET		= 0x111,
+	NVME_SC_FW_NEEDS_MAX_TIME	= 0x112,
+	NVME_SC_FW_ACIVATE_PROHIBITED	= 0x113,
+	NVME_SC_OVERLAPPING_RANGE	= 0x114,
+	NVME_SC_NS_INSUFFICENT_CAP	= 0x115,
+	NVME_SC_NS_ID_UNAVAILABLE	= 0x116,
+	NVME_SC_NS_ALREADY_ATTACHED	= 0x118,
+	NVME_SC_NS_IS_PRIVATE		= 0x119,
+	NVME_SC_NS_NOT_ATTACHED		= 0x11a,
+	NVME_SC_THIN_PROV_NOT_SUPP	= 0x11b,
+	NVME_SC_CTRL_LIST_INVALID	= 0x11c,
+
+	/*
+	 * I/O Command Set Specific - NVM commands:
+	 */
+	NVME_SC_BAD_ATTRIBUTES		= 0x180,
+	NVME_SC_INVALID_PI		= 0x181,
+	NVME_SC_READ_ONLY		= 0x182,
+	NVME_SC_ONCS_NOT_SUPPORTED	= 0x183,
+
+	/*
+	 * I/O Command Set Specific - Fabrics commands:
+	 */
+	NVME_SC_CONNECT_FORMAT		= 0x180,
+	NVME_SC_CONNECT_CTRL_BUSY	= 0x181,
+	NVME_SC_CONNECT_INVALID_PARAM	= 0x182,
+	NVME_SC_CONNECT_RESTART_DISC	= 0x183,
+	NVME_SC_CONNECT_INVALID_HOST	= 0x184,
+
+	NVME_SC_DISCOVERY_RESTART	= 0x190,
+	NVME_SC_AUTH_REQUIRED		= 0x191,
+
+	/*
+	 * Media and Data Integrity Errors:
+	 */
+	NVME_SC_WRITE_FAULT		= 0x280,
+	NVME_SC_READ_ERROR		= 0x281,
+	NVME_SC_GUARD_CHECK		= 0x282,
+	NVME_SC_APPTAG_CHECK		= 0x283,
+	NVME_SC_REFTAG_CHECK		= 0x284,
+	NVME_SC_COMPARE_FAILED		= 0x285,
+	NVME_SC_ACCESS_DENIED		= 0x286,
+	NVME_SC_UNWRITTEN_BLOCK		= 0x287,
+
+	/*
+	 * Path-related Errors:
+	 */
+	NVME_SC_ANA_PERSISTENT_LOSS	= 0x301,
+	NVME_SC_ANA_INACCESSIBLE	= 0x302,
+	NVME_SC_ANA_TRANSITION		= 0x303,
+	NVME_SC_HOST_PATH_ERROR		= 0x370,
+
+	NVME_SC_DNR			= 0x4000,
+};
+
+struct nvme_completion {
+	/*
+	 * Used by Admin and Fabrics commands to return data:
+	 */
+	union nvme_result {
+		__le16	u16;
+		__le32	u32;
+		__le64	u64;
+	} result;
+	__le16	sq_head;	/* how much of this queue may be reclaimed */
+	__le16	sq_id;		/* submission queue that generated this entry */
+	__u16	command_id;	/* of the command which completed */
+	__le16	status;		/* did the command fail, and if so, why? */
+};
+
+#define NVME_VS(major, minor, tertiary) \
+	(((major) << 16) | ((minor) << 8) | (tertiary))
+
+#define NVME_MAJOR(ver)		((ver) >> 16)
+#define NVME_MINOR(ver)		(((ver) >> 8) & 0xff)
+#define NVME_TERTIARY(ver)	((ver) & 0xff)
+
+#endif /* _LINUX_NVME_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
