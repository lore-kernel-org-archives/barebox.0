Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z03WY-0006OM-F2
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 07:55:43 +0000
Date: Wed, 3 Jun 2015 09:55:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150603075519.GL6325@pengutronix.de>
References: <20150602113736.07b93fb60300ecf8754272a7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150602113736.07b93fb60300ecf8754272a7@gmail.com>
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
Subject: Re: building sandbox barebox: too many '"BITS_PER_LONG" redefined'
 warnings
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Tue, Jun 02, 2015 at 11:37:36AM +0300, Antony Pavlov wrote:
> Hi, Sascha!
> 
> I have tried to build sandbox barebox from latest next on amd64 debian linux host.
> 
> I see very many '"BITS_PER_LONG" redefined' warnings, e.g.

Should be fixed now. Thanks for noting.

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
