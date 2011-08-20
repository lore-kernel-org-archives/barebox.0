Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QuiTo-0000hm-5Q
	for barebox@lists.infradead.org; Sat, 20 Aug 2011 10:08:40 +0000
Received: by vxj2 with SMTP id 2so3846251vxj.36
	for <barebox@lists.infradead.org>; Sat, 20 Aug 2011 03:08:36 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 20 Aug 2011 10:08:36 +0000
Message-ID: <CAK8HZOLNN4pdfbHXq40-Zngz3Dnx6hfUkW3n92jxhOHS0DbOaA@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: tftp or nfs?
To: barebox@lists.infradead.org

Hi

Unable to download and write a 30Mb ubifs file over tftp.  Any other
preferred method of writing to ubi volume?

Usb mass store doesn't mount.

regards

Nataraj

barebox@Atmel at91sam9263-ek:/ tftp rootfs.ubifs /dev/ubi0.root
warning: No MAC address set. Using random address 4A:01:CD:DA:A9:3C
phy0: Link is up - 100/Full
TFTP from server 192.168.0.110 ('rootfs.ubifs' -> '/dev/ubi0.root')
        #################################################UBI error: ubi_io_writs
UBI warning: ubi_eba_write_leb: failed to write data to PEB 603189552
UBI warning: ubi_ro_mode: switch to read-only mode
Couldnt or partially wrote data
write: Invalid argument

tftp failed: error -22

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
