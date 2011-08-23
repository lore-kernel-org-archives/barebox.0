Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qvj2h-0001bd-SK
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 04:56:52 +0000
Received: by vws8 with SMTP id 8so5512012vws.36
	for <barebox@lists.infradead.org>; Mon, 22 Aug 2011 21:56:49 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 23 Aug 2011 04:56:49 +0000
Message-ID: <CAK8HZO+OacPE9PWgni0x7yZMzs8yv+X7KFMciBoiQCi20xthLQ@mail.gmail.com>
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
Subject: BUG: failure at drivers/mtd/ubi/wl.c
To: barebox@lists.infradead.org

Hi

commit 8949efd0e186ea5ab4ff9c0864dc5e85758ea94f

barebox@Atmel at91sam9263-ek:/ tftp rootfs.ubifs.nat /dev/ubi0.data
warning: No MAC address set. Using random address 8E:20:BF:25:3E:CF
phy0: Link is up - 100/Full
TFTP from server 192.168.0.110 ('rootfs.ubifs.nat' -> '/dev/ubi0.data')
        BUG: failure at drivers/mtd/ubi/wl.c:1165/ubi_wl_put_peb()!
BUG!
RomBOOT

regards

Nataraj

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
