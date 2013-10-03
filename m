Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRoU0-00063V-7u
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 19:22:45 +0000
Received: from mail626.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E0480DC259C
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 21:22:22 +0200 (CEST)
Date: Thu, 3 Oct 2013 21:23:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131003192349.GR32444@ns203013.ovh.net>
References: <20131003171726.096b0daa@archvile>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131003171726.096b0daa@archvile>
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
Subject: Re: /dev/disk0 vs /dev/mmc0
To: David Jander <david.jander@protonic.nl>
Cc: barebox@lists.infradead.org

On 17:17 Thu 03 Oct     , David Jander wrote:
> 
> Hi all,
> 
> I am following barebox git closely and noticed a change recently: Device names
> for MMC (MCI) and USB mass-storage devices have changed to the
> generic "/dev/diskX". Earlier an MMC device was named "/dev/mmc0".
> Unfortunately this change breaks my /env/bin/init script and I don't know how
> to fix it. I relied on the existence of certain devices to distinguish between
> USB mass-storage device presence and/or SD-card presence. How can I do this
> with this new device naming convention?
> 
> I used to have these kind of checks in /env/bin/init:
> 
> # Mount MMC (first partition) if available
> if [ -e "/dev/mmc0.0" ]; then
>         mkdir /mmc
>         mount /dev/mmc0.0 /mmc
>         if [ -e "/mmc/uImage" ]; then
>                 boot_target="mmc"
>         fi
> fi
> 
> Booting like this is only allowed from MMC and not from USB, and now it seems
> impossible to distinguish between them anymore.
> 
> Btw, why was this changed in the first place?

now you an use devname parameter to specify a specifc name for mmc

not all the drivers have the platform_data update to support but it will be
easy enough to add it

I recently add this to atmel_mci and animeo_ip board

and I recomment you to switch to defaultenv-2 for this

and use boot sequence this will simplify your env hugely

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
