Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBfdK-0005j0-PY
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 07:13:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WBfcy-0005uc-Vl
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:13:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WBfcy-0000m1-U8
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:13:32 +0100
Date: Fri, 7 Feb 2014 08:13:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140207071332.GE16215@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Devicetree Maintenance in barebox
To: barebox@lists.infradead.org

Hi All,

It's becoming more obvious that devicetree maintenance is painful
because we have to sync them to the kernel regularly. My hope was that
this would get simpler once the devicetrees get their own repository
outside the kernel, but it seems that won't happen anytime soon.

So my current idea to continue with barebox devicetrees is:

- Maintain a kernel branch which has all devicetree changes we need in
  barebox in a clean step-by-step series
- rebase this branch regularly on the newer kernel
- Copy the resulting devicetrees to barebox

The upside is that we have up to date devicetrees in barebox without
having to resync them by hand on a per SoC basis.  Of course this also
means that we lose the devicetree history and breakage may be introduced
with some huge commits saying "Update devicetrees to Linux-3.x".

Any better ideas? I think we have to do something.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
