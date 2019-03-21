Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6sCl-00020n-0f
 for barebox@lists.infradead.org; Thu, 21 Mar 2019 07:33:36 +0000
Date: Thu, 21 Mar 2019 08:33:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190321073332.b3725avve4p6ascg@pengutronix.de>
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190320075215.7j36mofzoewd5qfa@pengutronix.de>
 <CAD_PvuYxnQJT7VVe0DKRZa-VHJN+Rz-tb9KLudtd+My8CBXhLg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD_PvuYxnQJT7VVe0DKRZa-VHJN+Rz-tb9KLudtd+My8CBXhLg@mail.gmail.com>
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
Subject: Re: selected processor does not support `rev r7,r7'
To: Lewis Zhou <lewisou@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 21, 2019 at 09:03:21AM +0800, Lewis Zhou wrote:
> Hi Sascha,
> 
> The toolchain was compiled by crosstool-NG. It used the default config
> arm-cortex_a8-linux-gnueabi but with the hardware float enabled. So
> the toolchain was arm-cortex_a8-linux-gnueabihf-.

Could you add V=1 to your make call and post an example gcc call? one is
enough, not the whole output.

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
