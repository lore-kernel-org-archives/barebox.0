Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x229.google.com ([2607:f8b0:4001:c0b::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMs9M-00086E-A3
 for barebox@lists.infradead.org; Sun, 27 May 2018 09:39:41 +0000
Received: by mail-it0-x229.google.com with SMTP id e20-v6so11680859itc.1
 for <barebox@lists.infradead.org>; Sun, 27 May 2018 02:39:29 -0700 (PDT)
MIME-Version: 1.0
From: Pascal Vizeli <pvizeli@syshack.ch>
Date: Sun, 27 May 2018 11:39:28 +0200
Message-ID: <CACvFaDcXB3kAcKGkX_rR7iPUr4qscogz6nwzPs9cNPkiAHODaQ@mail.gmail.com>
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
Subject: Device Tree Overlay Support v2
To: barebox@lists.infradead.org

Hi,

I rebase and update the patch from Jan Luebbe. They did a amazing job with:
http://lists.infradead.org/pipermail/barebox/2015-March/022674.html

I think it is now at the time to support overlay like uboot and other
bootloaders. They will help on raspberry, I think also on other
platforms, to update the device tree without a big shell script of
of_properties/of_fixup_status.

This features is very common today and missed by barebox.
I update the dtc scripts to the same version they we use on dts kernel level.

Patch are here:
https://github.com/home-assistant/hassos/tree/dev/buildroot-external/patches/barebox

Greets

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
