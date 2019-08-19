Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziM4-0001Mi-Cy
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 14:09:53 +0000
Date: Mon, 19 Aug 2019 16:09:50 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190819140950.sos7gfiyx3c45ybd@pengutronix.de>
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
 <20190819133847.17015-3-s.hauer@pengutronix.de>
 <20190819135240.le2mhbyf3v3ysqiw@pengutronix.de>
 <20190819135656.jgnplrkn3ipjj6ve@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819135656.jgnplrkn3ipjj6ve@pengutronix.de>
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
Subject: Re: [PATCH 2/8] scripts/dtc: Update to upstream version v1.5.0
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 19, 2019 at 03:56:56PM +0200, Sascha Hauer wrote:
> On Mon, Aug 19, 2019 at 03:52:40PM +0200, Roland Hieber wrote:
> > On Mon, Aug 19, 2019 at 03:38:41PM +0200, Sascha Hauer wrote:
> > > This adds the following commits from upstream:
> > > 
> > > d37f6b2 Bump version to v1.5.0
> > > a4b1a30 pylibfdt:tests: Extend the way how to find a Python module
> > 
> > I'm sorry if this will probably mean a lot of work for you, but sadly
> > those SHA1 hashes are too short to be unique :-(
> > 
> >     linux (master) $ git show d37f6b2
> >     fatal: ambiguous argument 'd37f6b2': unknown revision or path not in the working tree.
> >     Use '--' to separate paths from revisions, like this:
> >     'git <command> [<revision>...] -- [<file>...]'
> 
> These are dtc commits, not Linux kernel commits.

OK, that explains it. Then the comment should probably mention where
upstream lives :-)

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
