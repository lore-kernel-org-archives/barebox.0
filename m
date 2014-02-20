Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-f43.google.com ([209.85.213.43])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGWYI-0004gx-9P
 for barebox@lists.infradead.org; Thu, 20 Feb 2014 16:32:46 +0000
Received: by mail-yh0-f43.google.com with SMTP id z6so904846yhz.16
 for <barebox@lists.infradead.org>; Thu, 20 Feb 2014 08:32:22 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20140205154559.GA16215@pengutronix.de>
References: <1391159170-17686-1-git-send-email-freesilicon@gmail.com>
 <20140204035625.GE9671@ns203013.ovh.net>
 <20140204065745.GK16215@pengutronix.de>
 <CAKRNOGwpasg7O4fW0uMJAcgOmG2re26-mk70YpHaQVyzsX_XuQ@mail.gmail.com>
 <20140205080001.GX16215@pengutronix.de>
 <CAKRNOGz8aYN3yNzG=7wAF0=8ArUmn2h2qTAyGJ1UprWQUdHhsQ@mail.gmail.com>
 <20140205154559.GA16215@pengutronix.de>
Date: Thu, 20 Feb 2014 17:32:21 +0100
Message-ID: <CAKRNOGxBVe1eRpoOabj3sz5LjFqpEtVNqWsaDAopVEewZt=ATQ@mail.gmail.com>
From: David Vincent <freesilicon@gmail.com>
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
Subject: Re: [PATCH] Load PBL into SRAM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sorry to come back on this subject, but I just synced with the
mainline and I noticed that the patch was not fully applied. It was
missing the part

diff --git a/pbl/Kconfig b/pbl/Kconfig
index dc31357..1edc2d1 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -34,6 +34,13 @@ config PBL_FORCE_PIGGYDATA_COPY

 if PBL_IMAGE

+config LOAD_PBL_SRAM
+       bool "Load pbl in SRAM"
+       help
+         Load the whole content of the pbl binary into SRAM. This is
useful if you
+         use the pbl as a first stage bootloader but cannot load the
whole binary
+         at the same time.
+
 config PBL_RELOCATABLE
        depends on ARM
        bool "relocatable pbl image"

which is needed to make everything work. So should I provide a new
patch containing only this correction on the mainline ?

Best regards,
David

2014-02-05 16:45 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Wed, Feb 05, 2014 at 01:48:45PM +0100, David Vincent wrote:
>> Due to the flow of answers, I'm a little lost... What is the status of
>> this submission, should I resend it, put more work into it or lose it
>> ?
>
> The latest version looks fine. I applied it now.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
