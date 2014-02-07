Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBgBL-00068q-3a
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 07:49:03 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 4CF99FF832D
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 08:55:21 +0100 (CET)
Date: Fri, 7 Feb 2014 08:49:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140207074955.GH9671@ns203013.ovh.net>
References: <20140207071332.GE16215@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140207071332.GE16215@pengutronix.de>
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
Subject: Re: Devicetree Maintenance in barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:13 Fri 07 Feb     , Sascha Hauer wrote:
> Hi All,
> 
> It's becoming more obvious that devicetree maintenance is painful
> because we have to sync them to the kernel regularly. My hope was that
> this would get simpler once the devicetrees get their own repository
> outside the kernel, but it seems that won't happen anytime soon.
> 
> So my current idea to continue with barebox devicetrees is:
> 
> - Maintain a kernel branch which has all devicetree changes we need in
>   barebox in a clean step-by-step series
> - rebase this branch regularly on the newer kernel
> - Copy the resulting devicetrees to barebox
> 
> The upside is that we have up to date devicetrees in barebox without
> having to resync them by hand on a per SoC basis.  Of course this also
> means that we lose the devicetree history and breakage may be introduced
> with some huge commits saying "Update devicetrees to Linux-3.x".
> 
> Any better ideas? I think we have to do something.

push the kernel to split the tree as a sub module at least

so other project can import it

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
