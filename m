Delivery-date: Fri, 05 Nov 2021 13:42:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miyYD-0002Rw-Ar
	for lore@lore.pengutronix.de; Fri, 05 Nov 2021 13:42:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miyYC-0002At-C8
	for lore@pengutronix.de; Fri, 05 Nov 2021 13:42:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1hNWGYnbxbV533MVXgek7dRMpkzoURMVadCX7iwgtOY=; b=pFjAaXzOGylAQ9
	R5T1iP5+lNU1f901zZ9Vihjznl49WLfjCdxZHgrATeFYnFdUqXnCV4KU33trPhpg7l0lQc1L382pG
	h/y6/9KlaW9RGXUFJpAXqCNtGWOYG9zIxkrzXD6ZJjLZlHWMbTS7SYRJV9vn995bWHeiprZvFhwzq
	qAd0Wd6JKWFyB2ER6sPJEqFygTKaen1ymCkz3xWBDt+GM6gpXH239n47UNbcIbPijil50GL4XjcrS
	4RgXkW4XOBCyDHldxFEd/87U6D55a9lEY5+c6MGoarFqRU1LsESgZDxoBDGA1h2O2HJszWi0OzHNd
	FOH4ASdfXla7UfI9ZIsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyWv-00BGJu-PM; Fri, 05 Nov 2021 12:41:13 +0000
Received: from mailout04.rmx.de ([94.199.90.94])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyWp-00BGJD-01
 for barebox@lists.infradead.org; Fri, 05 Nov 2021 12:41:10 +0000
Received: from kdin01.retarus.com (kdin01.dmz1.retloc [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout04.rmx.de (Postfix) with ESMTPS id 4Hm0VH6Vpsz3qlpf;
 Fri,  5 Nov 2021 13:40:55 +0100 (CET)
Received: from mta.arri.de (unknown [217.111.95.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 4Hm0VF6rQ9z30gv;
 Fri,  5 Nov 2021 13:40:53 +0100 (CET)
Received: from n95hx1g2.localnet (192.168.54.147) by mta.arri.de
 (192.168.100.104) with Microsoft SMTP Server (TLS) id 14.3.498.0; Fri, 5 Nov
 2021 13:40:53 +0100
From: Christian Eggers <ceggers@arri.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Marc Kleine-Budde <mkl@pengutronix.de>
CC: <barebox@lists.infradead.org>
Date: Fri, 5 Nov 2021 13:40:52 +0100
Message-ID: <3170930.44csPzL39Z@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
MIME-Version: 1.0
X-Originating-IP: [192.168.54.147]
X-RMX-ID: 20211105-134053-qrlkGDjDPnSc-0@out01.hq
X-RMX-SOURCE: 217.111.95.66
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054107_252438_A27D43BF 
X-CRM114-Status: GOOD (  10.31  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [Barebox] Polling infrastructure causes reentrancy problem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Disclaimer: I stumbled over this on barebox 2020.01.
I haven't tried to reproduce this on the current version.

Summary:
----------
Use case: Linux kernel is started via Android fastboot (uses polling infrastructure) while probing of other device drivers is ongoing.
Behavior: usb_stor_disconnect() is called before usb_stor_probe() returned
Result: NULL pointer dereference in usb_stor_disconnect()


Details:
----------
I use fastboot over USB gadget for loading a FIT image (I have
stripped down/modified the Android fastboot command for this).
The fastboot command (on the PC) is executed via udev, so the
transfer of the FIT image starts as soon as fastboot has been
activated on the barebox side.

"Parallel" to the fastboot transfer, my (custom) barebox_main
scans for USB devices (e.g. for alternative recovery option via
USB thumb driver). During detection/registration of the first
USB drive, there are delay() statements which causes progress
on the fastboot file transfer. As soon as the FIT transfer has
finished, do_bootm_linux/shutdown_barebox is called. Here the
USB storage device is disconnected without ever having been
fully probed.

Call stack (start reading from bottom):
----------
-000|usb_stor_disconnect(usbdev = 0x9010D0B0)
--> usb_stor_disconnect is called with a partially probed device
--> NULL pointer dereference 

/* Handle a USB mass-storage disconnect */
static void usb_stor_disconnect(struct usb_device *usbdev)
{
	struct us_data *us = (struct us_data *)usbdev->drv_data;
--> us = NULL!
	struct us_blk_dev *bdev, *bdev_tmp;

...

-001|devices_shutdown()
-002|shutdown_barebox()
-003|start_linux(adr = 0x82000000, swap = 0, initrd_address = ?, initrd_size = 5739640, oftree = 0x828A20
-004|__do_bootm_linux(:data = 0x915FF560, free_mem = 2190090240, swap = 0, fdt = ?)
-005|do_bootm_linux(:data = 0x915FF560)
-006|bootm_boot(:bootm_data = 0x9FFEFBF8)
-007|cb_boot(:f_fb = 0x8FE644B0, opt = ?)
-008|fb_run_command(inline)
--> fastboot transfer is finished
-008|rx_handler_command(:ep = 0x8FE53050, :req = 0x8FE645F8)
-009|list_del_init(inline)
-009|done(:ep = 0x8FE53050, :req = 0x8FE645F8, status = ?)
-010|dtd_complete_irq(inline)
-010|fsl_udc_gadget_poll(inline)
-010|fsl_udc_gadget_poll(gadget = 0x8FE52EA0)
-011|poller_call()
-012|is_timeout(:start_ns = 34359738368, :time_offset_ns = 0)
-013|udelay(:usecs = 100)
--> delay caues progress on fastboot transfer
-013|mdelay(tailcall)
-014|usb_stor_transport(usb_blkdev = 0x9038DA48, cmd = 0x9FFEFD40 -> "", cmdlen = ?, data = 0x0, datalen
-015|usb_stor_test_unit_ready(:usb_blkdev = 0x9038DA48)
-016|usb_stor_init_blkdev(inline)
-016|usb_stor_add_blkdev(inline)
-016|usb_stor_scan(inline)
-016|usb_stor_probe(:usbdev = 0x9010DBC0, id = ?)
--> usb_store_probe() starts registration of USB device
-017|list_add(inline)
-017|device_probe(:dev = 0x9010DBC0)
-018|match(:drv = 0x9FC4B11C, :dev = 0x9010DBC0)
-019|list_add_tail(inline)
-019|register_device(:new_device = 0x9010DBC0)
-020|usb_new_device(:dev = 0x9010D0B0)
-021|usb_hub_port_connect_change(:dev = 0x8FE69A30, :port = 4)
-022|usb_scan_port(inline)
-022|usb_device_list_scan(inline)
-022|usb_hub_configure_ports(inline)
-022|usb_hub_detect(dev = 0x8FE692A0)
-023|usb_host_detect(:host = 0x8FE558A0)
-024|usb_rescan()
-025|orbiter_usb_recovery(inline)
-025|orbiter_recovery(inline)
--> Fastboot is activated somewhere here.
-025|orbiter_recovery()
-026|start_barebox()
-027|barebox_non_pbl_start(membase = 2147483648, memsize = ?, boarddata = 0x9FC3A6BF)
-028|start(membase = ?, memsize = ?, boarddata = ?)
 ---|end of frame


Probably I shouldn't use fastboot this way (causing linux boot from polling
infrastructure). On the other hand, using fastboot allows taking control from
a PC without the need for manually entering commands in barebox (which is
quite useful in my application).

As a first step, I will try to check for NULL pointer in usb_stor_disconnect().
But I guess there should be a more generic solution (e.g. not calling
disconnect/remove for partially probed devices).

regards
Christian




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

