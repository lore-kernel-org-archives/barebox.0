Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x229.google.com ([2a00:1450:4010:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aLDyu-0002gD-68
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 17:52:51 +0000
Received: by mail-lf0-x229.google.com with SMTP id h129so129392568lfh.3
 for <barebox@lists.infradead.org>; Mon, 18 Jan 2016 09:52:23 -0800 (PST)
From: pmamonov@gmail.com
Date: Mon, 18 Jan 2016 20:55:15 +0300
Message-Id: <1453139715-11612-1-git-send-email-pmamonov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] usb: port UHCI driver from the u-boot
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

From: Peter Mamonov <pmamonov@gmail.com>

Here is a UHCI driver ported from the u-boot.
There are a few pending FIXMEs, but the driver should work.

Can anyone test it?

BINDING:
	uhci: uhci@00000000 {
		compatible = "generic-uhci";
		reg = <0x00000000 0x200>;

		/* specify companion EHCI controller if any */
		companion = <&ehci>;
	};

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/Kconfig    |    4 +
 drivers/usb/host/Makefile   |    1 +
 drivers/usb/host/uhci-hcd.c | 1336 +++++++++++++++++++++++++++++++++++++++++++
 drivers/usb/host/uhci-hcd.h |  165 ++++++
 4 files changed, 1506 insertions(+)
 create mode 100644 drivers/usb/host/uhci-hcd.c
 create mode 100644 drivers/usb/host/uhci-hcd.h

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 54eaf46..61d981e 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -1,3 +1,7 @@
+config USB_UHCI
+	bool "UHCI driver"
+	depends on HAS_DMA
+
 config USB_EHCI
 	bool "EHCI driver"
 	depends on HAS_DMA
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index 0478d34..628ba61 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -1,3 +1,4 @@
+obj-$(CONFIG_USB_UHCI)		+= uhci-hcd.o
 obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
 obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
 obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
diff --git a/drivers/usb/host/uhci-hcd.c b/drivers/usb/host/uhci-hcd.c
new file mode 100644
index 0000000..cabd783
--- /dev/null
+++ b/drivers/usb/host/uhci-hcd.c
@@ -0,0 +1,1336 @@
+/*
+ * Part of this code has been derived from linux:
+ * Universal Host Controller Interface driver for USB (take II).
+ *
+ * (c) 1999-2001 Georg Acher, acher@in.tum.de (executive slave) (base guitar)
+ *               Deti Fliegl, deti@fliegl.de (executive slave) (lead voice)
+ *               Thomas Sailer, sailer@ife.ee.ethz.ch (chief consultant) (cheer
+ *               leader)
+ *               Roman Weissgaerber, weissg@vienna.at (virt root hub) (studio
+ *               porter)
+ * (c) 2000      Yggdrasil Computing, Inc. (port of new PCI interface support
+ *               from usb-ohci.c by Adam Richter, adam@yggdrasil.com).
+ * (C) 2000      David Brownell, david-b@pacbell.net (usb-ohci.c)
+ *
+ * HW-initalization based on material of
+ *
+ * (C) Copyright 1999 Linus Torvalds
+ * (C) Copyright 1999 Johannes Erdfelt
+ * (C) Copyright 1999 Randy Dunlap
+ * (C) Copyright 1999 Gregory P. Smith
+ *
+ *
+ * Adapted for U-Boot:
+ * (C) Copyright 2001 Denis Peter, MPL AG Switzerland
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+/**********************************************************************
+ * How it works:
+ * -------------
+ * The framelist / Transfer descriptor / Queue Heads are similar like
+ * in the linux usb_uhci.c.
+ *
+ * During initialization, the following skeleton is allocated in init_skel:
+ *
+ *         framespecific           |           common chain
+ *
+ * framelist[]
+ * [  0 ]-----> TD ---------\
+ * [  1 ]-----> TD ----------> TD ------> QH -------> QH -------> QH ---> NULL
+ *   ...        TD ---------/
+ * [1023]-----> TD --------/
+ *
+ *              ^^             ^^         ^^          ^^          ^^
+ *              7 TDs for      1 TD for   Start of    Start of    End Chain
+ *              INT (2-128ms)  1ms-INT    CTRL Chain  BULK Chain
+ *
+ *
+ * Since this is a bootloader, the isochronous transfer descriptor have been
+ * removed.
+ *
+ * Interrupt Transfers.
+ * --------------------
+ * For Interrupt transfers USB_MAX_TEMP_INT_TD Transfer descriptor are
+ * available. They will be inserted after the appropriate (depending the
+ * interval setting) skeleton TD.  If an interrupt has been detected the
+ * dev->irqhandler is called. The status and number of transfered bytes is
+ * stored in dev->irq_status resp. dev->irq_act_len. If the dev->irqhandler
+ * returns 0, the interrupt TD is removed and disabled. If an 1 is returned, the
+ * interrupt TD will be reactivated.
+ *
+ * Control Transfers
+ * -----------------
+ * Control Transfers are issued by filling the tmp_td with the appropriate data
+ * and connect them to the qh_cntrl queue header. Before other control/bulk
+ * transfers can be issued, the programm has to wait for completion. This does
+ * not allows asynchronous data transfer.
+ *
+ * Bulk Transfers
+ * --------------
+ * Bulk Transfers are issued by filling the tmp_td with the appropriate data and
+ * connect them to the qh_bulk queue header. Before other control/bulk transfers
+ * can be issued, the programm has to wait for completion. This does not allows
+ * asynchronous data transfer.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <dma.h>
+#include <usb/usb.h>
+#include "uhci-hcd.h"
+
+/* number of temporary TDs for bulk and control transfers */
+#define USB_MAX_TEMP_TD      128
+/* number of temporary TDs for Interrupt transfers */
+#define USB_MAX_TEMP_INT_TD  32
+
+#undef USB_UHCI_DEBUG
+
+struct uhci_priv {
+	struct device_d *dev;
+	void  *base_addr;
+	struct usb_host host;
+	int devnum;		            /* Address of Root Hub endpoint */
+	int numports;             /* number of ports */
+	int c_p_r[8];             /* C_PORT_RESET */
+	struct uhci_td *td_int;	/* Interrupt Transfer descriptors */
+	dma_addr_t td_int_dma;
+	struct uhci_qh *qh_cntrl;         /* control Queue Head */
+	dma_addr_t qh_cntrl_dma;
+	struct uhci_qh *qh_bulk;          /*  bulk Queue Head */
+	dma_addr_t qh_bulk_dma;
+	struct uhci_qh *qh_end;           /* end Queue Head */
+	dma_addr_t qh_end_dma;
+	struct uhci_td *td_last;          /* last TD (linked with end chain) */
+	dma_addr_t td_last_dma;
+	/* temporary tds */
+	struct uhci_td *tmp_td;	/* temporary bulk/control td's  */
+	dma_addr_t tmp_td_dma;
+	struct uhci_td *tmp_int_td;	/* temporary interrupt td's  */
+	dma_addr_t tmp_int_td_dma;
+	unsigned long *framelist; /* frame list */
+	dma_addr_t framelist_dma;
+};
+
+/* Device descriptor */
+static __u8 root_hub_dev_des[] = {
+	0x12,		/* __u8  bLength; */
+	0x01,		/* __u8  bDescriptorType; Device */
+	0x10,		/* __u16 bcdUSB; v1.1 */
+	0x01,
+	0x09,		/* __u8  bDeviceClass; HUB_CLASSCODE */
+	0x00,		/* __u8  bDeviceSubClass; */
+	0x00,		/* __u8  bDeviceProtocol; */
+	0x08,		/* __u8  bMaxPacketSize0; 8 Bytes */
+	0x00,		/* __u16 idVendor; */
+	0x00,
+	0x00,		/* __u16 idProduct; */
+	0x00,
+	0x00,		/* __u16 bcdDevice; */
+	0x00,
+	0x00,		/* __u8  iManufacturer; */
+	0x01,		/* __u8  iProduct; */
+	0x00,		/* __u8  iSerialNumber; */
+	0x01,		/* __u8  bNumConfigurations; */
+};
+
+static __u8 root_hub_config_des[] = {
+	0x09,		/* __u8  bLength; */
+	0x02,		/* __u8  bDescriptorType; Configuration */
+	0x19,		/* __u16 wTotalLength; */
+	0x00,
+	0x01,		/* __u8  bNumInterfaces; */
+	0x01,		/* __u8  bConfigurationValue; */
+	0x00,		/* __u8  iConfiguration; */
+	0x40,		/* __u8  bmAttributes;
+			 *       Bit 7: Bus-powered
+			 *       6: Self-powered,
+			 *       5 Remote-wakwup,
+			 *       4..0: resvd
+			 */
+	0x00,		/* __u8  MaxPower; */
+	/* interface */
+	0x09,		/* __u8  if_bLength; */
+	0x04,		/* __u8  if_bDescriptorType; Interface */
+	0x00,		/* __u8  if_bInterfaceNumber; */
+	0x00,		/* __u8  if_bAlternateSetting; */
+	0x01,		/* __u8  if_bNumEndpoints; */
+	0x09,		/* __u8  if_bInterfaceClass; HUB_CLASSCODE */
+	0x00,		/* __u8  if_bInterfaceSubClass; */
+	0x00,		/* __u8  if_bInterfaceProtocol; */
+	0x00,		/* __u8  if_iInterface; */
+	/* endpoint */
+	0x07,		/* __u8  ep_bLength; */
+	0x05,		/* __u8  ep_bDescriptorType; Endpoint */
+	0x81,		/* __u8  ep_bEndpointAddress; IN Endpoint 1 */
+	0x03,		/* __u8  ep_bmAttributes; Interrupt */
+	0x02,		/* __u16 ep_wMaxPacketSize; ((MAX_ROOT_PORTS + 1) / 8 */
+	0x00,
+	0xff,		/* __u8  ep_bInterval; 255 ms */
+};
+
+static unsigned char root_hub_str_index0[] = {
+	0x04,		/* __u8  bLength; */
+	0x03,		/* __u8  bDescriptorType; String-descriptor */
+	0x09,		/* __u8  lang ID */
+	0x04,		/* __u8  lang ID */
+};
+
+static unsigned char root_hub_str_index1[] = {
+	56,		/* __u8  bLength; */
+	0x03,		/* __u8  bDescriptorType; String-descriptor */
+	'u',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'-',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'b',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'o',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'o',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	't',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	' ',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'U',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'H',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'C',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'I',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	' ',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'H',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'o',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	's',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	't',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	' ',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'C',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'o',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'n',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	't',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'r',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'o',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'l',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'l',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'e',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+	'r',		/* __u8  Unicode */
+	0,		/* __u8  Unicode */
+};
+
+static unsigned char root_hub_hub_des[] = {
+	0x09,		/* __u8  bLength; */
+	0x29,		/* __u8  bDescriptorType; Hub-descriptor */
+	0x02,		/* __u8  bNbrPorts; */
+	0x00,		/* __u16 wHubCharacteristics; */
+	0x00,
+	0x01,		/* __u8  bPwrOn2pwrGood; 2ms */
+	0x00,		/* __u8  bHubContrCurrent; 0 mA */
+	0x00,		/* __u8  DeviceRemovable; *** 7 Ports max *** */
+	0xff,		/* __u8  PortPwrCtrlMask; *** 7 ports max *** */
+};
+
+/**********************************************************************
+ * some forward decleration
+ */
+static int uhci_submit_rh_msg(struct usb_device *dev, unsigned long pipe,
+			      void *buffer, int transfer_len,
+			      struct devrequest *setup);
+
+static void handle_usb_interrupt(struct uhci_priv *);
+static void usb_check_skel(struct uhci_priv *uhci);
+static void usb_check_int_chain(struct uhci_priv *uhci);
+
+#ifdef	USB_UHCI_DEBUG
+static void usb_show_td(struct uhci_priv *, int);
+#endif
+
+/* fill a td with the approproiate data. Link, status, info and buffer
+ * are used by the USB controller itselfes, dev is used to identify the
+ * "connected" device
+ */
+static void usb_fill_td(struct uhci_td *td,
+			unsigned long link,
+			unsigned long status,
+			unsigned long info,
+			void *buffer,
+			unsigned long dev)
+{
+	td->link = swap_32(link);
+	td->status = swap_32(status);
+	td->info = swap_32(info);
+	td->buffer = swap_32(virt_to_phys(buffer));
+	td->dev_ptr = dev;
+}
+
+/* fill a qh with the approproiate data. Head and element are used by the USB
+ * controller itselfes. As soon as a valid dev_ptr is filled, a td chain is
+ * connected to the qh.  Please note, that after completion of the td chain, the
+ * entry element is removed / marked invalid by the USB controller.
+ */
+static void usb_fill_qh(struct uhci_qh *qh,
+			unsigned long head,
+			unsigned long element)
+{
+	qh->head = swap_32(head);
+	qh->element = swap_32(element);
+	qh->dev_ptr = 0L;
+}
+
+/* get the status of a td->status
+ */
+static unsigned long usb_uhci_td_stat(unsigned long status)
+{
+	unsigned long result = 0;
+	result |= (status & TD_CTRL_NAK)      ? USB_ST_NAK_REC : 0;
+	result |= (status & TD_CTRL_STALLED)  ? USB_ST_STALLED : 0;
+	result |= (status & TD_CTRL_DBUFERR)  ? USB_ST_BUF_ERR : 0;
+	result |= (status & TD_CTRL_BABBLE)   ? USB_ST_BABBLE_DET : 0;
+	result |= (status & TD_CTRL_CRCTIMEO) ? USB_ST_CRC_ERR : 0;
+	result |= (status & TD_CTRL_BITSTUFF) ? USB_ST_BIT_ERR : 0;
+	result |= (status & TD_CTRL_ACTIVE)   ? USB_ST_NOT_PROC : 0;
+	return result;
+}
+
+/* get the status and the transfered len of a td chain.
+ * called from the completion handler
+ */
+static int usb_get_td_status(struct uhci_td *td, struct usb_device *dev)
+{
+	struct usb_host *host = dev->host;
+	struct uhci_priv *uhci = container_of(host, struct uhci_priv, host);
+	unsigned long temp, info;
+	unsigned long stat;
+	struct uhci_td *mytd = td;
+
+	if (dev->devnum == uhci->devnum)
+		return 0;
+	dev->act_len = 0;
+	stat = 0;
+	do {
+		temp = swap_32((unsigned long)mytd->status);
+		stat = usb_uhci_td_stat(temp);
+		info = swap_32((unsigned long)mytd->info);
+		if (((info & 0xff) != USB_PID_SETUP) &&
+			(((info >> 21) & 0x7ff) != 0x7ff) &&
+			(temp & 0x7FF) != 0x7ff) {
+			/* if not setup and not null data pack */
+			dev->act_len += (temp & 0x7FF) + 1;
+		}
+		if (stat) { /* status no ok */
+			dev->status = stat;
+			return -1;
+		}
+		temp = swap_32((unsigned long)mytd->link); /*FIXME*/
+		mytd = (struct uhci_td *)(temp & 0xfffffff0);
+	} while ((temp & 0x1) == 0); /* process all TDs */
+	dev->status = stat;
+	return 0; /* Ok */
+}
+
+
+/*-------------------------------------------------------------------
+ *                         LOW LEVEL STUFF
+ *          assembles QHs und TDs for control, bulk and iso
+ *-------------------------------------------------------------------*/
+
+/* Submits a control message. That is a Setup, Data and Status transfer.
+ * Routine does not wait for completion.
+ */
+static int submit_control_msg(struct usb_device *dev,
+			      unsigned long pipe,
+			      void *buffer,
+			      int transfer_len,
+			      struct devrequest *setup,
+			      int timeout)
+{
+	struct usb_host *host = dev->host;
+	struct uhci_priv *uhci = container_of(host, struct uhci_priv, host);
+	unsigned long destination, status;
+	int maxsze = usb_maxpacket(dev, pipe);
+	void *dataptr;
+	int len, pktsze, i = 0, ret = 0;
+
+	if (!maxsze) {
+		dev_err(&dev->dev, "%s: pipesize for pipe %lx is zero\n",
+			__func__, pipe);
+		return -1;
+	}
+	if (((pipe >> 8) & 0x7f) == uhci->devnum) {
+		/* this is the root hub -> redirect it */
+		return uhci_submit_rh_msg(dev, pipe, buffer,
+					  transfer_len, setup);
+	}
+	dev_dbg(&dev->dev, "%s: uhci_submit_control start len %x, maxsize %x\n",
+		__func__, transfer_len, maxsze);
+	/* The "pipe" thing contains the destination in bits 8--18 */
+	destination = (pipe & PIPE_DEVEP_MASK) | USB_PID_SETUP; /*Setup stage*/
+	/* 3 errors */
+	status = (pipe & TD_CTRL_LS) | TD_CTRL_ACTIVE | (3 << 27);
+	/*  Build the TD for the control request, try forever, 8 bytes of data*/
+	if (setup)
+		dma_sync_single_for_device((unsigned long)setup, sizeof(*setup),
+					   DMA_TO_DEVICE);
+	usb_fill_td(&uhci->tmp_td[i], UHCI_PTR_TERM, status,
+		    destination | (7 << 21),
+		    setup,
+		    (unsigned long)dev);
+	if (buffer)
+		dma_sync_single_for_device((unsigned long)buffer, transfer_len,
+					   DMA_TO_DEVICE);
+	dataptr = buffer;
+	len = transfer_len;
+
+	/* If direction is "send", change the frame from SETUP (0x2D)
+	   to OUT (0xE1). Else change it from SETUP to IN (0x69). */
+	destination = (pipe & PIPE_DEVEP_MASK) |
+		((pipe & USB_DIR_IN) == 0 ? USB_PID_OUT : USB_PID_IN);
+	while (len > 0) {
+		/* data stage */
+		pktsze = len;
+		i++;
+		if (pktsze > maxsze)
+			pktsze = maxsze;
+		destination ^= 1 << TD_TOKEN_TOGGLE; /* toggle DATA0/1 */
+		usb_fill_td(&uhci->tmp_td[i], UHCI_PTR_TERM, status,
+			    destination | ((pktsze - 1) << 21),
+			    dataptr,
+			    (unsigned long)dev);/*Status, pktsze bytes of data*/
+		uhci->tmp_td[i-1].link = swap_32(uhci->tmp_td_dma +
+						 i * sizeof(struct uhci_td));
+
+		dataptr += pktsze;
+		len -= pktsze;
+	}
+
+	/*  Build the final TD for control status */
+	/* It's only IN if the pipe is out AND we aren't expecting data */
+
+	destination &= ~UHCI_PID;
+	if (((pipe & USB_DIR_IN) == 0) || (transfer_len == 0))
+		destination |= USB_PID_IN;
+	else
+		destination |= USB_PID_OUT;
+	destination |= 1 << TD_TOKEN_TOGGLE;	/* End in Data1 */
+	i++;
+	status &= ~TD_CTRL_SPD;
+	/* no limit on errors on final packet , 0 bytes of data */
+	usb_fill_td(&uhci->tmp_td[i], UHCI_PTR_TERM,
+		    status | TD_CTRL_IOC,
+		    destination | (UHCI_NULL_DATA_SIZE << 21),
+		    0, (unsigned long)dev);
+	/* queue status td */
+	uhci->tmp_td[i-1].link = swap_32(uhci->tmp_td_dma +
+					 i * sizeof(struct uhci_td));
+	dev_dbg(&dev->dev, "%s end (%d tmp_tds used)\n", __func__, i);
+	/* first mark the control QH element terminated */
+	uhci->qh_cntrl->element = 0xffffffffL;
+	/* set qh active */
+	uhci->qh_cntrl->dev_ptr = (unsigned long)dev;
+	/* fill in tmp_td_chain */
+	uhci->qh_cntrl->element = swap_32(uhci->tmp_td_dma);
+
+	handle_usb_interrupt(uhci);
+
+	if (buffer)
+		dma_sync_single_for_cpu((unsigned long)buffer, transfer_len,
+					DMA_FROM_DEVICE);
+	usb_check_skel(uhci);
+	return ret;
+}
+
+/*-------------------------------------------------------------------
+ * Prepare TDs for bulk transfers.
+ */
+static int submit_bulk_msg(struct usb_device *dev, unsigned long pipe,
+			   void *buffer, int transfer_len, int timeout)
+{
+	struct usb_host *host = dev->host;
+	struct uhci_priv *uhci = container_of(host, struct uhci_priv, host);
+	unsigned long destination, status, info;
+	void *dataptr;
+	int maxsze = usb_maxpacket(dev, pipe);
+	int len;
+	int i = 0;
+
+	if (transfer_len < 0) {
+		printf("Negative transfer length in submit_bulk\n");
+		return -1;
+	}
+	if (!maxsze)
+		return -1;
+	/* The "pipe" thing contains the destination in bits 8--18. */
+	destination = (pipe & PIPE_DEVEP_MASK) | usb_packetid(pipe);
+	/* 3 errors */
+	status = (pipe & TD_CTRL_LS) | TD_CTRL_ACTIVE | (3 << 27);
+	/* Build the TDs for the bulk request */
+	len = transfer_len;
+	if (buffer)
+		dma_sync_single_for_device((unsigned long)buffer, transfer_len,
+					   DMA_TO_DEVICE);
+	dataptr = buffer;
+	do {
+		int pktsze = len;
+		if (pktsze > maxsze)
+			pktsze = maxsze;
+		/* pktsze bytes of data  */
+		info =	destination |
+			(((pktsze - 1)&UHCI_NULL_DATA_SIZE) << 21) |
+			(usb_gettoggle(dev,
+				       usb_pipeendpoint(pipe),
+				       usb_pipeout(pipe)) << TD_TOKEN_TOGGLE);
+
+		if ((len - pktsze) == 0)
+			status |= TD_CTRL_IOC;
+
+		usb_fill_td(&uhci->tmp_td[i],
+			    UHCI_PTR_TERM,
+			    status,
+			    info,
+			    dataptr,
+			    (unsigned long)dev);
+		if (i > 0)
+			uhci->tmp_td[i-1].link = swap_32(uhci->tmp_td_dma +
+						   i * sizeof(struct uhci_td));
+		i++;
+		dataptr += pktsze;
+		len -= pktsze;
+		usb_dotoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe));
+	} while (len > 0);
+	/* first mark the bulk QH element terminated */
+	uhci->qh_bulk->element = 0xffffffffL;
+	/* set qh active */
+	uhci->qh_bulk->dev_ptr = (unsigned long)dev;
+	/* fill in tmp_td_chain */
+	uhci->qh_bulk->element = swap_32(uhci->tmp_td_dma);
+
+	handle_usb_interrupt(uhci);
+
+	if (buffer)
+		dma_sync_single_for_cpu((unsigned long)buffer, transfer_len,
+					DMA_FROM_DEVICE);
+
+	usb_check_skel(uhci);
+
+	return 0;
+}
+
+
+/*
+ * search a free interrupt td
+ */
+static struct uhci_td *uhci_alloc_int_td(struct uhci_priv *uhci)
+{
+	return &uhci->tmp_int_td[0];
+
+}
+
+/*
+ * submits USB interrupt (ie. polling ;-)
+ */
+static int submit_int_msg(struct usb_device *dev,
+			  unsigned long pipe,
+			  void *buffer,
+			  int transfer_len,
+			  int interval)
+{
+	struct usb_host *host = dev->host;
+	struct uhci_priv *uhci = container_of(host, struct uhci_priv, host);
+	int nint, n;
+	unsigned long status, destination;
+	unsigned long info, tmp;
+	struct uhci_td *mytd;
+
+	if (interval < 0 || interval >= 256)
+		return -1;
+
+	if (interval == 0) {
+		nint = 0;
+	} else {
+		/* round interval down to 2^n */
+		for (nint = 0, n = 1; nint <= 8; nint++, n += n) {
+			if (interval < n) {
+				interval = n / 2;
+				break;
+			}
+		}
+		nint--;
+	}
+
+	dev_dbg(&dev->dev, "%s: Rounded interval to %i, chain  %i\n",
+		__func__, interval, nint);
+	mytd = uhci_alloc_int_td(uhci);
+	if (mytd == NULL) {
+		printf("No free INT TDs found\n");
+		return -1;
+	}
+	status = (pipe & TD_CTRL_LS) | TD_CTRL_ACTIVE | TD_CTRL_IOC | (3 << 27);
+
+	destination =	(pipe & PIPE_DEVEP_MASK) |
+			usb_packetid(pipe) |
+			(((transfer_len - 1) & 0x7ff) << 21);
+
+	info =	destination |
+		(usb_gettoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe))
+			<< TD_TOKEN_TOGGLE);
+	tmp = swap_32(uhci->td_int[nint].link); /* FIXME */
+	if (buffer)
+		dma_sync_single_for_device((unsigned long)buffer, transfer_len,
+					   DMA_TO_DEVICE);
+	usb_fill_td(mytd, tmp, status, info, buffer, (unsigned long)dev);
+	/* Link it */
+	tmp = swap_32((unsigned long)virt_to_phys(mytd));
+	uhci->td_int[nint].link = tmp;
+
+	usb_dotoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe));
+
+	handle_usb_interrupt(uhci);
+
+	if (buffer)
+		dma_sync_single_for_cpu((unsigned long)buffer, transfer_len,
+					DMA_FROM_DEVICE);
+
+	usb_check_int_chain(uhci);
+
+	return 0;
+}
+/**********************************************************************
+ * Low Level functions
+ */
+
+
+static void reset_hc(struct uhci_priv *uhci)
+{
+
+	/* Global reset for 100ms */
+	writew(0x0204, uhci->base_addr + USBPORTSC1);
+	writew(0x0204, uhci->base_addr + USBPORTSC2);
+	writew(USBCMD_GRESET | USBCMD_RS, uhci->base_addr + USBCMD);
+	/* Turn off all interrupts */
+	writew(0, uhci->base_addr + USBINTR);
+	mdelay(50);
+	writew(0, uhci->base_addr + USBCMD);
+	mdelay(10);
+}
+
+static int start_hc(struct uhci_priv *uhci)
+{
+	int timeout = 1000;
+
+	while (readw(uhci->base_addr + USBCMD) & USBCMD_HCRESET) {
+		if (!--timeout) {
+			printf("USBCMD_HCRESET timed out!\n");
+			return -ETIMEDOUT;
+		}
+	}
+	/* Turn on all interrupts */
+	writew(USBINTR_TIMEOUT | USBINTR_RESUME | USBINTR_IOC | USBINTR_SP,
+	       uhci->base_addr + USBINTR);
+	/* Start at frame 0 */
+	writew(0, uhci->base_addr + USBFRNUM);
+	/* set Framebuffer base address */
+	writel(uhci->framelist_dma, uhci->base_addr + USBFLBASEADD);
+	/* Run and mark it configured with a 64-byte max packet */
+	writew(USBCMD_RS | USBCMD_CF | USBCMD_MAXP, uhci->base_addr + USBCMD);
+	return 0;
+}
+
+/* Initialize the skeleton
+ */
+static void usb_init_skel(struct uhci_priv *uhci)
+{
+	unsigned long temp;
+	int n;
+
+	for (n = 0; n < USB_MAX_TEMP_INT_TD; n++)
+		uhci->tmp_int_td[n].dev_ptr = 0L; /* no devices connected */
+	/* last td */
+	usb_fill_td(uhci->td_last, UHCI_PTR_TERM, 0, 0, 0, 0L);
+	/* usb_fill_td(&td_last,UHCI_PTR_TERM,0,0,0); */
+	/* End Queue Header */
+	usb_fill_qh(uhci->qh_end, UHCI_PTR_TERM, uhci->td_last_dma);
+	/* Bulk Queue Header */
+	temp = uhci->qh_end_dma;
+	usb_fill_qh(uhci->qh_bulk, temp | UHCI_PTR_QH, UHCI_PTR_TERM);
+	/* Control Queue Header */
+	temp = uhci->qh_bulk_dma;
+	usb_fill_qh(uhci->qh_cntrl, temp | UHCI_PTR_QH, UHCI_PTR_TERM);
+	/* 1ms Interrupt td */
+	temp = uhci->qh_cntrl_dma;
+	usb_fill_td(&uhci->td_int[0], temp | UHCI_PTR_QH, 0, 0, 0, 0L);
+	temp = uhci->td_int_dma;
+	for (n = 1; n < 8; n++)
+		usb_fill_td(&uhci->td_int[n], temp, 0, 0, 0, 0L);
+	for (n = 0; n < 1024; n++) {
+		/* link all framelist pointers to one of the interrupts */
+		int m, o;
+		if ((n & 127) == 127)
+			uhci->framelist[n] = swap_32(uhci->td_int_dma);
+		else
+			for (o = 1, m = 2; m <= 128; o++, m += m)
+				if ((n & (m - 1)) == ((m - 1) / 2))
+					uhci->framelist[n] =
+						swap_32(uhci->td_int_dma +
+						    o * sizeof(struct uhci_td));
+	}
+}
+
+/* check the common skeleton for completed transfers, and update the status
+ * of the "connected" device. Called from the IRQ routine.
+ */
+static void usb_check_skel(struct uhci_priv *uhci)
+{
+	struct usb_device *dev;
+	/* start with the control qh */
+	if (uhci->qh_cntrl->dev_ptr != 0) {
+		/* it's a device assigned check if this caused IRQ */
+		dev = (struct usb_device *)uhci->qh_cntrl->dev_ptr;
+		usb_get_td_status(&uhci->tmp_td[0], dev); /* update status */
+		if (!(dev->status & USB_ST_NOT_PROC))
+			/* is not active anymore, disconnect devices */
+			uhci->qh_cntrl->dev_ptr = 0;
+	}
+	/* now process the bulk */
+	if (uhci->qh_bulk->dev_ptr != 0) {
+		/* it's a device assigned check if this caused IRQ */
+		dev = (struct usb_device *)uhci->qh_bulk->dev_ptr;
+		usb_get_td_status(&uhci->tmp_td[0], dev); /* update status */
+		if (!(dev->status & USB_ST_NOT_PROC))
+			/* is not active anymore, disconnect devices */
+			uhci->qh_bulk->dev_ptr = 0;
+	}
+}
+
+/* check the interrupt chain, ubdate the status of the appropriate device,
+ * call the appropriate irqhandler and reactivate the TD if the irqhandler
+ * returns with 1
+ */
+static void usb_check_int_chain(struct uhci_priv *uhci)
+{
+	int i;
+	unsigned long link, status;
+	struct uhci_td *td, *prevtd;
+
+	for (i = 0; i < 8; i++) {
+		/* the first previous td is the skeleton td */
+		prevtd = &uhci->td_int[i];
+		/* next in chain */
+		link = swap_32(uhci->td_int[i].link) & 0xfffffff0; /*FIXME*/
+		/* assign it */
+		td = (struct uhci_td *)link; /*FIXME*/
+
+		/* all interrupt TDs are finally linked to the td_int[0].
+		 * so we process all until we find the td_int[0].
+		 * if int0 chain points to a QH, we're also done
+		 */
+		/*FIXME*/
+		while (((i > 0) && (link != virt_to_phys(&uhci->td_int[0]))) ||
+		       ((i == 0) && !(swap_32(td->link) & UHCI_PTR_QH))) {
+			/* check if a device is assigned with this td */
+			status = swap_32(td->status);
+			if ((td->dev_ptr != 0L) && !(status & TD_CTRL_ACTIVE)) {
+				prevtd->link = td->link;
+				/* remove device pointer */
+				td->dev_ptr = 0L;
+			} /* if we call the irq handler */
+			link = swap_32(td->link) & 0xfffffff0; /*next in chain*/
+			td = (struct uhci_td *)link; /* assign it */
+		} /* process all td in this int chain */
+	}
+}
+
+/* usb interrupt service routine.
+ */
+static void handle_usb_interrupt(struct uhci_priv *uhci)
+{
+	unsigned short status;
+	int tout = 1000;
+	/*
+	 * Read the interrupt status, and write it back to clear the
+	 * interrupt cause
+	 */
+	do {
+		mdelay(1);
+		status = readw(uhci->base_addr + USBSTS);
+		if (--tout == 0) {
+			dev_err(uhci->dev, "TIMEOUT\n");
+			break;
+		}
+
+	} while (!status);
+
+
+	if (status != 1) {
+		/* remove host controller halted state */
+		if ((status & 0x20) &&
+		    ((readw(uhci->base_addr + USBCMD) && USBCMD_RS) == 0)) {
+			writew(USBCMD_RS | readw(uhci->base_addr + USBCMD),
+			       uhci->base_addr + USBCMD);
+		}
+	}
+
+	writew(status, uhci->base_addr + USBSTS);
+	status = readw(uhci->base_addr + USBSTS);
+}
+
+/* init uhci
+ */
+static int usb_lowlevel_init(struct usb_host *host)
+{
+	struct uhci_priv *uhci = container_of(host, struct uhci_priv, host);
+
+	usb_init_skel(uhci);
+	reset_hc(uhci);
+	start_hc(uhci);
+	return 0;
+}
+
+/*
+ * stop uhci
+ */
+static int usb_lowlevel_stop(struct uhci_priv *uhci)
+{
+	reset_hc(uhci);
+	return 0;
+}
+
+/*
+ * Virtual Root Hub
+ * Since the uhci does not have a real HUB, we simulate one ;-)
+ */
+#undef	USB_RH_DEBUG
+
+#ifdef	USB_RH_DEBUG
+#define	USB_RH_PRINTF(fmt, args...)	printf(fmt, ##args)
+static void usb_display_wValue(unsigned short wValue, unsigned short wIndex);
+static void usb_display_Req(unsigned short req);
+#else
+#define USB_RH_PRINTF(fmt, args...)
+static void usb_display_wValue(unsigned short wValue, unsigned short wIndex) {}
+static void usb_display_Req(unsigned short req) {}
+#endif
+
+/*
+ * Root Hub Control Pipe (interrupt Pipes are not supported)
+ */
+static int uhci_submit_rh_msg(struct usb_device *dev,
+		       unsigned long pipe,
+		       void *buffer,
+		       int transfer_len,
+		       struct devrequest *cmd)
+{
+	struct usb_host *host = dev->host;
+	struct uhci_priv *uhci = container_of(host, struct uhci_priv, host);
+	void *data = buffer;
+	int leni = transfer_len;
+	int len = 0;
+	int status = 0;
+	int stat = 0;
+	int i;
+
+	uint16_t pstatus, pchange;
+
+	unsigned short bmRType_bReq;
+	unsigned short wValue;
+	unsigned short wIndex;
+	unsigned short wLength;
+
+	if (usb_pipeint(pipe)) {
+		printf("Root-Hub submit IRQ: NOT implemented\n");
+		return 0;
+	}
+	bmRType_bReq = cmd->requesttype | cmd->request << 8;
+	wValue = swap_16(cmd->value);
+	wIndex = swap_16(cmd->index);
+	wLength = swap_16(cmd->length);
+	usb_display_Req(bmRType_bReq);
+	for (i = 0; i < 8; i++)
+		uhci->c_p_r[i] = 0;
+	USB_RH_PRINTF("Root-Hub: adr: %2x cmd(%1x): %02x%02x %04x %04x %04x\n",
+	     dev->devnum, 8, cmd->requesttype, cmd->request,
+	     wValue, wIndex, wLength);
+
+	switch (bmRType_bReq) {
+		/* Request Destination:
+		   without flags: Device,
+		   RH_INTERFACE: interface,
+		   RH_ENDPOINT: endpoint,
+		   RH_CLASS means HUB here,
+		   RH_OTHER | RH_CLASS  almost ever means HUB_PORT here
+		 */
+
+	case RH_GET_STATUS:
+		*(unsigned short *)data = swap_16(1);
+		len = 2;
+		break;
+	case RH_GET_STATUS | RH_INTERFACE:
+		*(unsigned short *)data = swap_16(0);
+		len = 2;
+		break;
+	case RH_GET_STATUS | RH_ENDPOINT:
+		*(unsigned short *)data = swap_16(0);
+		len = 2;
+		break;
+	case RH_GET_STATUS | RH_CLASS:
+		*(unsigned long *)data = swap_32(0);
+		len = 4;
+		break;	/* hub power ** */
+	case RH_GET_STATUS | RH_OTHER | RH_CLASS:
+		mdelay(100);
+		status = readw(uhci->base_addr + USBPORTSC1 + 2 * (wIndex - 1));
+		pchange = 0;
+		if (status & USBPORTSC_CSC)
+			pchange |= USB_PORT_STAT_C_CONNECTION;
+		if (status & USBPORTSC_PEC)
+			pchange |= USB_PORT_STAT_C_ENABLE;
+
+		/* Ignore overcurrent */
+
+		/* UHCI has no power switching (always on) */
+		pstatus = USB_PORT_STAT_POWER;
+		if (status & USBPORTSC_CCS)
+			pstatus |= USB_PORT_STAT_CONNECTION;
+		if (status & USBPORTSC_PE) {
+			pstatus |= USB_PORT_STAT_ENABLE;
+			if (status & (USBPORTSC_SUSP | USBPORTSC_RD))
+				pstatus |= USB_PORT_STAT_SUSPEND;
+		}
+		if (status & USBPORTSC_PR)
+			pstatus |= USB_PORT_STAT_RESET;
+		if (status & USBPORTSC_LSDA)
+			pstatus |= USB_PORT_STAT_LOW_SPEED;
+
+		*(unsigned short *)data = swap_16(pstatus);
+		*(unsigned short *)(data + 2) = swap_16(pchange);
+		len = 4;
+		break;
+	case RH_CLEAR_FEATURE | RH_ENDPOINT:
+		switch (wValue) {
+		case (RH_ENDPOINT_STALL):
+			len = 0;
+			break;
+		}
+		break;
+
+	case RH_CLEAR_FEATURE | RH_CLASS:
+		switch (wValue) {
+		case (RH_C_HUB_OVER_CURRENT):
+			len = 0; /* hub power over current ** */
+			break;
+		}
+		break;
+
+	case RH_CLEAR_FEATURE | RH_OTHER | RH_CLASS:
+		usb_display_wValue(wValue, wIndex);
+		switch (wValue) {
+		case (RH_PORT_ENABLE):
+			status = readw(uhci->base_addr + USBPORTSC1 +
+				       2 * (wIndex - 1));
+			status = (status & 0xfff5) & ~USBPORTSC_PE;
+			writew(status, uhci->base_addr + USBPORTSC1 +
+				       2 * (wIndex - 1));
+			len = 0;
+			break;
+		case (RH_PORT_SUSPEND):
+			status = readw(uhci->base_addr + USBPORTSC1 +
+				       2 * (wIndex - 1));
+			status = (status & 0xfff5) & ~USBPORTSC_SUSP;
+			writew(status, uhci->base_addr + USBPORTSC1 +
+				       2 * (wIndex - 1));
+			len = 0;
+			break;
+		case (RH_PORT_POWER):
+			len = 0; /* port power ** */
+			break;
+		case (RH_C_PORT_CONNECTION):
+			status = readw(uhci->base_addr + USBPORTSC1 +
+				       2 * (wIndex - 1));
+			status = (status & 0xfff5) | USBPORTSC_CSC;
+			writew(status,
+			       uhci->base_addr + USBPORTSC1 + 2 * (wIndex - 1));
+			len = 0;
+			break;
+		case (RH_C_PORT_ENABLE):
+			status = readw(uhci->base_addr + USBPORTSC1 +
+				       2 * (wIndex - 1));
+			status = (status & 0xfff5) | USBPORTSC_PEC;
+			writew(status,
+			       uhci->base_addr + USBPORTSC1 + 2 * (wIndex - 1));
+			len = 0;
+			break;
+		case (RH_C_PORT_SUSPEND):
+/*** WR_RH_PORTSTAT(RH_PS_PSSC); */
+			len = 0;
+			break;
+		case (RH_C_PORT_OVER_CURRENT):
+			len = 0;
+			break;
+		case (RH_C_PORT_RESET):
+			uhci->c_p_r[wIndex - 1] = 0;
+			len = 0;
+			break;
+		}
+		break;
+	case RH_SET_FEATURE | RH_OTHER | RH_CLASS:
+		usb_display_wValue(wValue, wIndex);
+		switch (wValue) {
+		case (RH_PORT_SUSPEND):
+			status = readw(uhci->base_addr + USBPORTSC1 +
+				       2 * (wIndex - 1));
+			status = (status & 0xfff5) | USBPORTSC_SUSP;
+			writew(status, uhci->base_addr + USBPORTSC1 +
+			       2 * (wIndex - 1));
+			len = 0;
+			break;
+		case (RH_PORT_RESET):
+			status = readw(uhci->base_addr + USBPORTSC1 +
+				       2 * (wIndex - 1));
+			status = (status & 0xfff5) | USBPORTSC_PR;
+			writew(status, uhci->base_addr + USBPORTSC1 +
+			       2 * (wIndex - 1));
+			mdelay(10);
+			status = (status & 0xfff5) & ~USBPORTSC_PR;
+			writew(status, uhci->base_addr + USBPORTSC1 +
+			       2 * (wIndex - 1));
+			udelay(10);
+			status = (status & 0xfff5) | USBPORTSC_PE;
+			writew(status, uhci->base_addr + USBPORTSC1 +
+			       2 * (wIndex - 1));
+			mdelay(10);
+			status = (status & 0xfff5) | 0xa;
+			writew(status, uhci->base_addr + USBPORTSC1 +
+			       2 * (wIndex - 1));
+			len = 0;
+			break;
+		case (RH_PORT_POWER):
+			len = 0; /* port power ** */
+			break;
+		case (RH_PORT_ENABLE):
+			status = readw(uhci->base_addr+USBPORTSC1+2*(wIndex-1));
+			status = (status & 0xfff5) | USBPORTSC_PE;
+			writew(status, uhci->base_addr+USBPORTSC1+2*(wIndex-1));
+			len = 0;
+			break;
+		}
+		break;
+
+	case RH_SET_ADDRESS:
+		uhci->devnum = wValue;
+		len = 0;
+		break;
+	case RH_GET_DESCRIPTOR:
+		switch ((wValue & 0xff00) >> 8) {
+		case (0x01):	/* device descriptor */
+			i = sizeof(root_hub_dev_des);
+			status = i > wLength ? wLength : i;
+			len = leni > status ? status : leni;
+			memcpy(data, root_hub_dev_des, len);
+			break;
+		case (0x02):	/* configuration descriptor */
+			i = sizeof(root_hub_config_des);
+			status = i > wLength ? wLength : i;
+			len = leni > status ? status : leni;
+			memcpy(data, root_hub_config_des, len);
+			break;
+		case (0x03):	/*string descriptors */
+			if (wValue == 0x0300) {
+				i = sizeof(root_hub_str_index0);
+				status = i > wLength ? wLength : i;
+				len = leni > status ? status : leni;
+				memcpy(data, root_hub_str_index0, len);
+				break;
+			}
+			if (wValue == 0x0301) {
+				i = sizeof(root_hub_str_index1);
+				status = i > wLength ? wLength : i;
+				len = leni > status ? status : leni;
+				memcpy(data, root_hub_str_index1, len);
+				break;
+			}
+			stat = USB_ST_STALLED;
+		}
+		break;
+
+	case RH_GET_DESCRIPTOR | RH_CLASS:
+		root_hub_hub_des[2] = 2;
+		i = sizeof(root_hub_hub_des);
+		status = i > wLength ? wLength : i;
+		len = leni > status ? status : leni;
+		memcpy(data, root_hub_hub_des, len);
+		break;
+	case RH_GET_CONFIGURATION:
+		*(unsigned char *) data = 0x01;
+		len = 1;
+		break;
+	case RH_SET_CONFIGURATION:
+		len = 0;
+		break;
+	default:
+		stat = USB_ST_STALLED;
+	}
+	USB_RH_PRINTF("Root-Hub stat %lx port1: %x port2: %x\n\n",
+		      stat,
+		      readw(uhci->base_addr + USBPORTSC1),
+		      readw(uhci->base_addr + USBPORTSC2));
+	dev->act_len = len;
+	dev->status = stat;
+	return stat;
+
+}
+
+/*
+ * Some Debug Routines
+ */
+#ifdef	USB_RH_DEBUG
+static void usb_display_Req(unsigned short req)
+{
+	USB_RH_PRINTF("- Root-Hub Request: ");
+	switch (req) {
+	case RH_GET_STATUS:
+		USB_RH_PRINTF("Get Status ");
+		break;
+	case RH_GET_STATUS | RH_INTERFACE:
+		USB_RH_PRINTF("Get Status Interface ");
+		break;
+	case RH_GET_STATUS | RH_ENDPOINT:
+		USB_RH_PRINTF("Get Status Endpoint ");
+		break;
+	case RH_GET_STATUS | RH_CLASS:
+		USB_RH_PRINTF("Get Status Class");
+		break;	/* hub power ** */
+	case RH_GET_STATUS | RH_OTHER | RH_CLASS:
+		USB_RH_PRINTF("Get Status Class Others");
+		break;
+	case RH_CLEAR_FEATURE | RH_ENDPOINT:
+		USB_RH_PRINTF("Clear Feature Endpoint ");
+		break;
+	case RH_CLEAR_FEATURE | RH_CLASS:
+		USB_RH_PRINTF("Clear Feature Class ");
+		break;
+	case RH_CLEAR_FEATURE | RH_OTHER | RH_CLASS:
+		USB_RH_PRINTF("Clear Feature Other Class ");
+		break;
+	case RH_SET_FEATURE | RH_OTHER | RH_CLASS:
+		USB_RH_PRINTF("Set Feature Other Class ");
+		break;
+	case RH_SET_ADDRESS:
+		USB_RH_PRINTF("Set Address ");
+		break;
+	case RH_GET_DESCRIPTOR:
+		USB_RH_PRINTF("Get Descriptor ");
+		break;
+	case RH_GET_DESCRIPTOR | RH_CLASS:
+		USB_RH_PRINTF("Get Descriptor Class ");
+		break;
+	case RH_GET_CONFIGURATION:
+		USB_RH_PRINTF("Get Configuration ");
+		break;
+	case RH_SET_CONFIGURATION:
+		USB_RH_PRINTF("Get Configuration ");
+		break;
+	default:
+		USB_RH_PRINTF("****UNKNOWN**** 0x%04X ", req);
+	}
+	USB_RH_PRINTF("\n");
+
+}
+
+static void usb_display_wValue(unsigned short wValue, unsigned short wIndex)
+{
+	switch (wValue) {
+	case (RH_PORT_ENABLE):
+		USB_RH_PRINTF("Root-Hub: Enable Port %d\n", wIndex);
+		break;
+	case (RH_PORT_SUSPEND):
+		USB_RH_PRINTF("Root-Hub: Suspend Port %d\n", wIndex);
+		break;
+	case (RH_PORT_POWER):
+		USB_RH_PRINTF("Root-Hub: Port Power %d\n", wIndex);
+		break;
+	case (RH_C_PORT_CONNECTION):
+		USB_RH_PRINTF("Root-Hub: C Port Connection Port %d\n",
+			      wIndex);
+		break;
+	case (RH_C_PORT_ENABLE):
+		USB_RH_PRINTF("Root-Hub: C Port Enable Port %d\n",
+			      wIndex);
+		break;
+	case (RH_C_PORT_SUSPEND):
+		USB_RH_PRINTF("Root-Hub: C Port Suspend Port %d\n",
+			      wIndex);
+		break;
+	case (RH_C_PORT_OVER_CURRENT):
+		USB_RH_PRINTF("Root-Hub: C Port Over Current Port %d\n",
+			      wIndex);
+		break;
+	case (RH_C_PORT_RESET):
+		USB_RH_PRINTF("Root-Hub: C Port reset Port %d\n",
+			      wIndex);
+		break;
+	default:
+		USB_RH_PRINTF("Root-Hub: unknown %x %x\n",
+			      wValue, wIndex);
+		break;
+	}
+}
+#endif
+
+#ifdef	USB_UHCI_DEBUG
+static int usb_display_td(struct uhci_td *td)
+{
+	unsigned long tmp;
+	int valid;
+
+	printf("TD at %p:\n", td);
+	tmp = swap_32(td->link);
+	printf("Link points to 0x%08lX, %s first, %s, %s\n", tmp & 0xfffffff0,
+		((tmp & 0x4) == 0x4) ? "Depth" : "Breath",
+		((tmp & 0x2) == 0x2) ? "QH" : "TD",
+		((tmp & 0x1) == 0x1) ? "invalid" : "valid");
+	valid = ((tmp & 0x1) == 0x0);
+	tmp = swap_32(td->status);
+	printf("     %s %ld Errors %s %s %s\n     %s %s %s %s %s %s\n     Len 0x%lX\n",
+		(((tmp >> 29) & 0x1) == 0x1) ? "SPD Enable" : "SPD Disable",
+		((tmp >> 28) & 0x3),
+		(((tmp >> 26) & 0x1) == 0x1) ? "Low Speed" : "Full Speed",
+		(((tmp >> 25) & 0x1) == 0x1) ? "ISO " : "",
+		(((tmp >> 24) & 0x1) == 0x1) ? "IOC " : "",
+		(((tmp >> 23) & 0x1) == 0x1) ? "Active " : "Inactive ",
+		(((tmp >> 22) & 0x1) == 0x1) ? "Stalled" : "",
+		(((tmp >> 21) & 0x1) == 0x1) ? "Data Buffer Error" : "",
+		(((tmp >> 20) & 0x1) == 0x1) ? "Babble" : "",
+		(((tmp >> 19) & 0x1) == 0x1) ? "NAK" : "",
+		(((tmp >> 18) & 0x1) == 0x1) ? "Bitstuff Error" : "",
+		(tmp & 0x7ff));
+	tmp = swap_32(td->info);
+	printf("     MaxLen 0x%lX\n", ((tmp >> 21) & 0x7FF));
+	printf("     %s Endpoint 0x%lX Dev Addr 0x%lX PID 0x%lX\n",
+		((tmp >> 19) & 0x1) == 0x1 ? "TOGGLE" : "",
+		((tmp >> 15) & 0xF), ((tmp >> 8) & 0x7F), tmp & 0xFF);
+	tmp = swap_32(td->buffer);
+	printf("     Buffer 0x%08lX\n", tmp);
+	printf("     DEV %08lX\n", td->dev_ptr);
+	return valid;
+}
+
+static void usb_show_td(struct uhci_priv *uhci, int max)
+{
+	int i;
+
+	if (max > 0) {
+		for (i = 0; i < max; i++)
+			usb_display_td(&uhci->tmp_td[i]);
+	} else {
+		i = 0;
+		do {
+			printf("tmp_td[%d]\n", i);
+		} while (usb_display_td(&uhci->tmp_td[i++]));
+	}
+}
+#endif
+
+static int uhci_detect(struct device_d *dev)
+{
+	struct uhci_priv *uhci = dev->priv;
+
+	return usb_host_detect(&uhci->host);
+}
+
+static int uhci_probe(struct device_d *dev)
+{
+	struct uhci_priv *uhci;
+	struct usb_host *host;
+	void *base_addr;
+	struct device_node *dn = dev->device_node, *companion;
+	struct device_d *comp_dev;
+
+	if (dn) {
+		companion = of_parse_phandle(dn, "companion", 0);
+		if (companion) {
+			comp_dev = of_find_device_by_node(companion);
+			if (!comp_dev || !comp_dev->priv)
+				return -EPROBE_DEFER;
+		}
+	}
+
+	base_addr = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base_addr))
+		return PTR_ERR(base_addr);
+
+	uhci = xzalloc(sizeof(struct uhci_priv));
+	dev->priv = uhci;
+	uhci->dev = dev;
+	uhci->base_addr = base_addr;
+
+	uhci->framelist = dma_alloc_coherent(4 * 1024, &uhci->framelist_dma);
+	uhci->tmp_td = dma_alloc_coherent(USB_MAX_TEMP_TD *
+						sizeof(struct uhci_td),
+					  &uhci->tmp_td_dma);
+	uhci->tmp_int_td = dma_alloc_coherent(USB_MAX_TEMP_INT_TD *
+					      sizeof(struct uhci_td),
+					      &uhci->tmp_int_td_dma);
+	uhci->td_int = dma_alloc_coherent(8 * sizeof(struct uhci_td),
+					  &uhci->td_int_dma);
+	uhci->qh_cntrl = dma_alloc_coherent(sizeof(struct uhci_qh),
+					    &uhci->qh_cntrl_dma);
+	uhci->qh_bulk = dma_alloc_coherent(sizeof(struct uhci_qh),
+					   &uhci->qh_bulk_dma);
+	uhci->qh_end = dma_alloc_coherent(sizeof(struct uhci_qh),
+					  &uhci->qh_end_dma);
+	uhci->td_last = dma_alloc_coherent(sizeof(struct uhci_td),
+					   &uhci->td_last_dma);
+	host = &uhci->host;
+	host->hw_dev = dev;
+
+	host->init = usb_lowlevel_init;
+	host->submit_control_msg = submit_control_msg;
+	host->submit_int_msg = submit_int_msg;
+	host->submit_bulk_msg = submit_bulk_msg;
+	dev->detect = uhci_detect;
+
+	return usb_register_host(host);
+}
+
+static void uhci_remove(struct device_d *dev)
+{
+	struct uhci_priv *uhci = dev->priv;
+
+	usb_lowlevel_stop(uhci);
+}
+
+static __maybe_unused struct of_device_id uhci_platform_dt_ids[] = {
+	{
+		.compatible = "generic-uhci",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d uhci_driver = {
+	.name  = "uhci",
+	.probe = uhci_probe,
+	.remove = uhci_remove,
+	.of_compatible = DRV_OF_COMPAT(uhci_platform_dt_ids),
+};
+device_platform_driver(uhci_driver);
diff --git a/drivers/usb/host/uhci-hcd.h b/drivers/usb/host/uhci-hcd.h
new file mode 100644
index 0000000..b26f506
--- /dev/null
+++ b/drivers/usb/host/uhci-hcd.h
@@ -0,0 +1,165 @@
+/*
+ * (C) Copyright 2001
+ * Denis Peter, MPL AG Switzerland
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ *
+ * Note: Part of this code has been derived from linux
+ */
+#ifndef _USB_UHCI_H_
+#define _USB_UHCI_H_
+
+
+/* Command register */
+#define USBCMD		0
+#define   USBCMD_RS       0x0001	/* Run/Stop */
+#define   USBCMD_HCRESET  0x0002	/* Host reset */
+#define   USBCMD_GRESET   0x0004	/* Global reset */
+#define   USBCMD_EGSM     0x0008	/* Global Suspend Mode */
+#define   USBCMD_FGR      0x0010	/* Force Global Resume */
+#define   USBCMD_SWDBG    0x0020	/* SW Debug mode */
+#define   USBCMD_CF       0x0040	/* Config Flag (sw only) */
+#define   USBCMD_MAXP     0x0080	/* Max Packet (0 = 32, 1 = 64) */
+
+/* Status register */
+#define USBSTS		2
+#define   USBSTS_USBINT   0x0001	/* Interrupt due to IOC */
+#define   USBSTS_ERROR    0x0002	/* Interrupt due to error */
+#define   USBSTS_RD       0x0004	/* Resume Detect */
+#define   USBSTS_HSE      0x0008	/* Host System Error */
+#define   USBSTS_HCPE     0x0010	/* Host Controller Process Error */
+#define   USBSTS_HCH      0x0020	/* HC Halted */
+
+/* Interrupt enable register */
+#define USBINTR		4
+#define   USBINTR_TIMEOUT 0x0001	/* Timeout/CRC error enable */
+#define   USBINTR_RESUME  0x0002	/* Resume interrupt enable */
+#define   USBINTR_IOC     0x0004	/* Interrupt On Complete enable */
+#define   USBINTR_SP      0x0008	/* Short packet interrupt enable */
+
+#define USBFRNUM      6
+#define USBFLBASEADD  8
+#define USBSOF        12
+
+/* USB port status and control registers */
+#define USBPORTSC1	16
+#define USBPORTSC2	18
+#define   USBPORTSC_CCS   0x0001	/* Current Connect Status */
+#define   USBPORTSC_CSC   0x0002	/* Connect Status Change */
+#define   USBPORTSC_PE    0x0004	/* Port Enable */
+#define   USBPORTSC_PEC   0x0008	/* Port Enable Change */
+#define   USBPORTSC_LS    0x0030	/* Line Status */
+#define   USBPORTSC_RD    0x0040	/* Resume Detect */
+#define   USBPORTSC_LSDA  0x0100	/* Low Speed Device Attached */
+#define   USBPORTSC_PR    0x0200	/* Port Reset */
+#define   USBPORTSC_SUSP  0x1000	/* Suspend */
+
+/* Legacy support register */
+#define USBLEGSUP 0xc0
+#define USBLEGSUP_DEFAULT 0x2000	/* only PIRQ enable set */
+
+#define UHCI_NULL_DATA_SIZE 0x7ff	/* for UHCI controller TD */
+#define UHCI_PID            0xff	/* PID MASK */
+
+#define UHCI_PTR_BITS       0x000F
+#define UHCI_PTR_TERM       0x0001
+#define UHCI_PTR_QH         0x0002
+#define UHCI_PTR_DEPTH      0x0004
+
+/* for TD <status>: */
+#define TD_CTRL_SPD         (1 << 29)	/* Short Packet Detect */
+#define TD_CTRL_C_ERR_MASK  (3 << 27)	/* Error Counter bits */
+#define TD_CTRL_LS          (1 << 26)	/* Low Speed Device */
+#define TD_CTRL_IOS         (1 << 25)	/* Isochronous Select */
+#define TD_CTRL_IOC         (1 << 24)	/* Interrupt on Complete */
+#define TD_CTRL_ACTIVE      (1 << 23)	/* TD Active */
+#define TD_CTRL_STALLED     (1 << 22)	/* TD Stalled */
+#define TD_CTRL_DBUFERR     (1 << 21)	/* Data Buffer Error */
+#define TD_CTRL_BABBLE      (1 << 20)	/* Babble Detected */
+#define TD_CTRL_NAK         (1 << 19)	/* NAK Received */
+#define TD_CTRL_CRCTIMEO    (1 << 18)	/* CRC/Time Out Error */
+#define TD_CTRL_BITSTUFF    (1 << 17)	/* Bit Stuff Error */
+#define TD_CTRL_ACTLEN_MASK 0x7ff	/* actual length, encoded as n - 1 */
+
+#define TD_CTRL_ANY_ERROR	(TD_CTRL_STALLED | TD_CTRL_DBUFERR | \
+				 TD_CTRL_BABBLE | TD_CTRL_CRCTIME | \
+				 TD_CTRL_BITSTUFF)
+
+#define TD_TOKEN_TOGGLE		19
+
+/*
+ * Virtual Root HUB
+ */
+/* destination of request */
+#define RH_INTERFACE               0x01
+#define RH_ENDPOINT                0x02
+#define RH_OTHER                   0x03
+
+#define RH_CLASS                   0x20
+#define RH_VENDOR                  0x40
+
+/* Requests: bRequest << 8 | bmRequestType */
+#define RH_GET_STATUS           0x0080
+#define RH_CLEAR_FEATURE        0x0100
+#define RH_SET_FEATURE          0x0300
+#define RH_SET_ADDRESS          0x0500
+#define RH_GET_DESCRIPTOR       0x0680
+#define RH_SET_DESCRIPTOR       0x0700
+#define RH_GET_CONFIGURATION    0x0880
+#define RH_SET_CONFIGURATION    0x0900
+#define RH_GET_STATE            0x0280
+#define RH_GET_INTERFACE        0x0A80
+#define RH_SET_INTERFACE        0x0B00
+#define RH_SYNC_FRAME           0x0C80
+/* Our Vendor Specific Request */
+#define RH_SET_EP               0x2000
+
+/* Hub port features */
+#define RH_PORT_CONNECTION         0x00
+#define RH_PORT_ENABLE             0x01
+#define RH_PORT_SUSPEND            0x02
+#define RH_PORT_OVER_CURRENT       0x03
+#define RH_PORT_RESET              0x04
+#define RH_PORT_POWER              0x08
+#define RH_PORT_LOW_SPEED          0x09
+#define RH_C_PORT_CONNECTION       0x10
+#define RH_C_PORT_ENABLE           0x11
+#define RH_C_PORT_SUSPEND          0x12
+#define RH_C_PORT_OVER_CURRENT     0x13
+#define RH_C_PORT_RESET            0x14
+
+/* Hub features */
+#define RH_C_HUB_LOCAL_POWER       0x00
+#define RH_C_HUB_OVER_CURRENT      0x01
+
+#define RH_DEVICE_REMOTE_WAKEUP    0x00
+#define RH_ENDPOINT_STALL          0x01
+
+/* Our Vendor Specific feature */
+#define RH_REMOVE_EP               0x00
+
+
+#define RH_ACK                     0x01
+#define RH_REQ_ERR                 -1
+#define RH_NACK                    0x00
+
+
+/* Transfer descriptor structure */
+struct uhci_td {
+	unsigned long link;     /* next td/qh (LE)*/
+	unsigned long status;   /* status of the td */
+	unsigned long info;     /* Max Lenght / Endpoint / dev address and PID*/
+	unsigned long buffer;   /* pointer to data buffer (LE) */
+	unsigned long dev_ptr;  /* pointer to the assigned device (BE) */
+	unsigned long res[3];   /* reserved (TDs must be 8Byte aligned) */
+};
+
+/* Queue Header structure */
+struct uhci_qh {
+	unsigned long head;       /* Next QH (LE)*/
+	unsigned long element;		/* Queue element pointer (LE) */
+	unsigned long res[5];     /* reserved */
+	unsigned long dev_ptr;    /* if 0 no tds have been assigned to this qh*/
+};
+
+#endif /* _USB_UHCI_H_ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
