Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3WJl-0005Hk-QD
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 17:30:58 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id EB233DC3D24
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 18:33:49 +0100 (CET)
Date: Fri, 2 Mar 2012 18:21:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120302172113.GF12248@game.jcrosoft.org>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1330707323-8021-1-git-send-email-dimov@ronetix.at>
 <1330707323-8021-3-git-send-email-dimov@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330707323-8021-3-git-send-email-dimov@ronetix.at>
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
Subject: Re: [PATCH v2 3/4] pm9g45: enable MCI0
To: Asen Chavdarov Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On 18:55 Fri 02 Mar     , Asen Chavdarov Dimov wrote:
> FIXME: part of or no data is written. File copy ends
> with message: "atmel_mci@atmel_mci0: command/data timeout"
> 
> Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
> ---
> since v1:
> 	add_device_mci renamed to pm9g45_add_device_mci
> ---
>  arch/arm/boards/pm9g45/init.c     |   16 ++++++++++++++++
>  arch/arm/configs/pm9g45_defconfig |   34 +++++++++++++++++++++++++++++++---
use savedefconfig

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
