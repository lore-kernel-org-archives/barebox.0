Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TODms-0004pB-5M
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 20:30:50 +0000
Date: Tue, 16 Oct 2012 22:30:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121016203048.GY27665@pengutronix.de>
References: <1350328918-15383-1-git-send-email-s.hauer@pengutronix.de>
 <20121016072248.GE5803@game.jcrosoft.org>
 <20121016073052.GV27665@pengutronix.de>
 <20121016084734.GI5803@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121016084734.GI5803@game.jcrosoft.org>
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
Subject: Re: [PATCH] ARM bootz: use request_sdram_region
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 16, 2012 at 10:47:34AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:30 Tue 16 Oct     , Sascha Hauer wrote:
> > On Tue, Oct 16, 2012 at 09:22:48AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 21:21 Mon 15 Oct     , Sascha Hauer wrote:
> > > > We now have request_sdram_region to request a region. Use
> > > > it instead of a comparison with MALLOC_BASE.
> > > > 
> > > do we really need to keep bootz??
> > 
> > As long as it does not cause a real maintenance burden we can keep it.
> bootm do the same job

Yes, but bootz is smaller. It is no problem to keep it. When it becomes
a problem, we can remove it. I see no reason though to do it now.

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
