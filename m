Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3WKn-0005aw-W5
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 17:32:02 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 72FC8DC3E6C
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 18:34:55 +0100 (CET)
Date: Fri, 2 Mar 2012 18:22:20 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120302172220.GG12248@game.jcrosoft.org>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1330707323-8021-1-git-send-email-dimov@ronetix.at>
 <1330707323-8021-4-git-send-email-dimov@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330707323-8021-4-git-send-email-dimov@ronetix.at>
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
Subject: Re: [PATCH v2 4/4] pm9g45: enable USB OHCI host and USB mass storage
To: Asen Chavdarov Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On 18:55 Fri 02 Mar     , Asen Chavdarov Dimov wrote:
> FIXME: execute the "usb" command twice to create the /dev/disk0 device.
> 
> Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
> ---
> since v1:
> 	- add_device_usbh renamed to pm9g45_add_device_usbh
> 	- skipped manual enabling of clocks
> ---
>  arch/arm/boards/pm9g45/init.c     |   18 ++++++++++++++++++
>  arch/arm/configs/pm9g45_defconfig |   31 +++++++++++++++----------------
same comment as the other patch

please use savedefconfig

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
