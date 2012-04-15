Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJT2i-0004IH-G5
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 17:15:16 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E40D9FF86D8
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 19:16:27 +0200 (CEST)
Date: Sun, 15 Apr 2012 18:57:09 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120415165709.GQ30672@game.jcrosoft.org>
References: <1334506961-31245-1-git-send-email-s.hauer@pengutronix.de>
 <1334506961-31245-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334506961-31245-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/2] add 2nd generation default env
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:22 Sun 15 Apr     , Sascha Hauer wrote:
> The current default environment grows in complexity and still is
> quite unflexible. The basic mistake we (or better I) made is that
> we had a boot script and tried to control its behaviour with
> variables passed to this script. This had the consequence that
> with every new feature we had to pass another variable to this
> script and add another if/else to the script. This environment
> set inverts this behaviour. It introduces a set of helper functions
> which /env/config can use to do its job.
> 
> The helpers are:
> 
> /env/bin/ifup
> 
> bring up networking. Uses /env/network/$interface to configure the
> interface. If something has to be done to discover the interface (for
> USB devices), the code can be put into /env/network/${interface}-discover
> 
> /env/bin/bootargs-root-*
> 
> Add fields to $bootargs relevant for the kernel to find its rootfs. We
> currently have helpers for ubi, nfs, initrd and jffs2
> 
> /env/bin/bootargs-ip-*
> 
> Add fields to $bootargs relevant for the kernel to configure networking.
> Currently we have helpers for dhcp, static or ip=none
> 
> /env/bin/mtdparts-init
> /env/bin/mtdparts-add
> 
> Add barebox partitions to mtd like devices and construct the mtdparts
> Kernel option.
> 
> Additionally the automount feature is used to transparently mount
> filesystems. With this only the device/file which contains the kernel
> has to be specified in /env/config.

can you give us few days to try before apply it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
