Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucTe-0001ti-Qj
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:52:40 +0000
Message-ID: <e46f774792ed7650f23de9513111cf6db2a13e50.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 05 Aug 2019 14:52:35 +0200
In-Reply-To: <1565007657.2323.11.camel@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
 <f75dea541dc77d5f2416f85fd8619ee0cb67a084.1564997015.git-series.r.czerwinski@pengutronix.de>
 <1565007657.2323.11.camel@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2 09/16] images: always build sha256sum into pbl
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org

On Mon, 2019-08-05 at 14:20 +0200, Lucas Stach wrote:
> 
> Hm, this add an unconditional build dependency to the sha256sum host-
> tool, which might be a bit unexpected. I'm not sot sure if we care
> about this, so I'll defer the decision to Sascha. ;)

sha256sum is contained in coreutils, I think we can expect it to be
available on build machines :-)

Regards,
Rouven Czerwinski
-- 
Pengutronix e.K.                           |            		 |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
