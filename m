Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cn2CG-0004i2-2W
 for barebox@lists.infradead.org; Sun, 12 Mar 2017 12:02:01 +0000
Received: from player718.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 0738F6490B
 for <barebox@lists.infradead.org>; Sun, 12 Mar 2017 13:01:37 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player718.ha.ovh.net (Postfix) with ESMTPA id EEBCB4E0080
 for <barebox@lists.infradead.org>; Sun, 12 Mar 2017 13:01:36 +0100 (CET)
Date: Sun, 12 Mar 2017 13:07:57 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170312120757.GB25192@mail.ovh.net>
References: <1488776651-7555-2-git-send-email-plagnioj@jcrosoft.com>
 <1488792887-8715-1-git-send-email-plagnioj@jcrosoft.com>
 <20170311162345.6uorq55jzjzjoa7f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170311162345.6uorq55jzjzjoa7f@pengutronix.de>
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
Subject: Re: [PATCH 2/2 v2] efi: add serial driver support
To: barebox@lists.infradead.org

On 17:23 Sat 11 Mar     , Michael Olbrich wrote:
> On Mon, Mar 06, 2017 at 10:34:47AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > So now we can stop to use the efi-stdio as this driver
> > print on the Framebuffer and the serial at the same time.
> > 
> > This is specially usefull if we want to use the framebuffer via efi-gop for
> > something else.
> > 
> > Do not forget to disable the efi-stdio device before enabling the console
> > otherwise you will get double printing.
> 
> Works nicely here (with a unrelated fix). However, it might be better to
> implement this as a console_platform_driver. The efi drivers are loaded
> rather late during startup and this makes early debugging impossible.
I did not did it as you can use efi-stdio as early as possible

but we can take a look to probe it earlier

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
