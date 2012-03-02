Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3WCK-0003ml-9i
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 17:23:17 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B56EADC3EA8
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 18:26:09 +0100 (CET)
Date: Fri, 2 Mar 2012 18:13:34 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120302171334.GB12248@game.jcrosoft.org>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1330618889-11482-3-git-send-email-dimov@ronetix.at>
 <20120301171243.GU12248@game.jcrosoft.org>
 <4F50E556.3040600@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F50E556.3040600@ronetix.at>
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
Subject: Re: [PATCH 3/3] pm9g45: enable USB OHCI host and USB mass storage
To: RONETIX - Asen Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On 17:20 Fri 02 Mar     , RONETIX - Asen Dimov wrote:
> Hi Jean-Christophe,
> 
> On 03/01/2012 07:12 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> ...
> >diff --git a/arch/arm/configs/pm9g45_defconfig
> >b/arch/arm/configs/pm9g45_defconfig
> >>index 5132ea4..1f3c780 100644
> >>--- a/arch/arm/configs/pm9g45_defconfig
> >>+++ b/arch/arm/configs/pm9g45_defconfig
> >>@@ -197,7 +197,7 @@ CONFIG_CMD_CRC_CMP=y
> >>  #
> >>  # flash
> >>  #
> >>-CONFIG_CMD_FLASH=y
> >>+# CONFIG_CMD_FLASH is not set
> >why this?
> >
> there is no NOR flash on the pm9g45 board.
so please update the defconfig in an other patch

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
