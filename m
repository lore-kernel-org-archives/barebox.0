Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj5ww-0006xX-I1
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 17:23:00 +0000
Date: Mon, 14 Jan 2019 18:22:52 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190114172252.GA21469@ravnborg.org>
References: <20181120084100.8737-1-s.hauer@pengutronix.de>
 <20190114163450.aydh27jptkc6p24y@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190114163450.aydh27jptkc6p24y@pengutronix.de>
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
Subject: Re: [PATCH 0/3] ARM: images: Use piggydata
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Roland.

On Mon, Jan 14, 2019 at 05:34:50PM +0100, Roland Hieber wrote:
> Hi,
> 
> There are still two references to 'pblx' in the tree:
> 
> $ g grep pblx
> Documentation/boards/mxs.rst:self extracting barebox image (``*.pblx``) and the prepare stage
> common/Kconfig:          The pblx is a self extracting barebox binary.
> 
> Do those need to be updated, or can they stay?
Please update - in 6 months from now it would just confuse the reader.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
