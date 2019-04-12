Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEt0m-0007XS-ML
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 10:02:22 +0000
Date: Fri, 12 Apr 2019 12:02:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190412100218.rz6jykk7x3f7wjhs@pengutronix.de>
References: <20190412082028.6195-1-s.hauer@pengutronix.de>
 <20190412094606.2bkv5vimvsra3ae7@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412094606.2bkv5vimvsra3ae7@pengutronix.de>
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
Subject: Re: [PATCH 1/2] mtd: peb: Add function to test for an empty block
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Apr 12, 2019 at 11:46:06AM +0200, Roland Hieber wrote:
> On Fri, Apr 12, 2019 at 10:20:27AM +0200, Sascha Hauer wrote:
> > FIXME: Why does this use raw accesses? The test for 16 bitflips
> 
> Was this FIXME supposed to land in the commit history? :)

Hm, no. It doesn't seem to reflect reality anymore, so I'll drop it.

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
