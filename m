Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvUMQ-0006oi-D9
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 13:16:15 +0000
Received: by vws8 with SMTP id 8so4742164vws.36
	for <barebox@lists.infradead.org>; Mon, 22 Aug 2011 06:16:12 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 22 Aug 2011 13:16:12 +0000
Message-ID: <CAK8HZO+ij1xUHkFuSHXJriHd+_pMvwMkrRnvp9XyqFBWnvU_mw@mail.gmail.com>
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
Subject: UBI error: ubi_io_read: error -74
To: barebox@lists.infradead.org

Hi

May I have some hints/ideas regarding the following?

barebox@Atmel at91sam9263-ek:/ ubiattach /dev/nand0.data

 I am hereUBI: attaching mtd0 to ubi0
UBI: physical eraseblock size:   131072 bytes (128 KiB)
UBI: logical eraseblock size:    126976 bytes
UBI: smallest flash I/O unit:    2048
UBI: VID header offset:          2048 (aligned 2048)
UBI: data offset:                4096
UBI error: ubi_io_read: error -74 while reading 64 bytes from PEB 0:0,
read 64 bytes
UBI error: validate_ec_hdr: bad VID header offset 512, expected 2048
UBI error: validate_ec_hdr: bad EC header
UBI error: ubi_io_read_ec_hdr: validation failed for PEB 0
err: -22
failed to attach: Invalid argument

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
