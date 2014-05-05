Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhE99-0008Od-RG
 for barebox@lists.infradead.org; Mon, 05 May 2014 08:21:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WhE8j-0004RM-V4
 for barebox@lists.infradead.org; Mon, 05 May 2014 10:20:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WhE8n-0006xY-Oz
 for barebox@lists.infradead.org; Mon, 05 May 2014 10:20:49 +0200
Date: Mon, 5 May 2014 10:20:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140505082049.GB5918@pengutronix.de>
References: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] Add Linux dts files and use them
To: barebox@lists.infradead.org

Some updates how I intend to handle upstream dts changes in barebox.

- I will merge the latest upstream dts changes to barebox for each Linux
  rc. Should dts changes introduce regressions this will at least give us
  the Linux rc which introduced it
- I will always merge dts updates to barebox next, not to master. While
  dts changes may be needed in master to fix regressions on one board,
  they could also introduce new regressions on other boards. Should we
  need dts changes to fix regressions in barebox master, we have to do
  it using overlays in arch/*/dts/ until an upstream fix arrives in dts/
- I will not send the dts updates to the list, I'll just merge them to
  barebox next some time after a new Linux rc arrived (As just happened
  with 3.15-rc3)

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
