Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YYJ7x-0003jo-1q
 for barebox@lists.infradead.org; Wed, 18 Mar 2015 18:55:39 +0000
Date: Wed, 18 Mar 2015 19:55:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150318185512.GQ4927@pengutronix.de>
References: <DB3PR03MB0826E47A0EE5FF439BDD67B698000@DB3PR03MB0826.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR03MB0826E47A0EE5FF439BDD67B698000@DB3PR03MB0826.eurprd03.prod.outlook.com>
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
Subject: Re: Is this a barebox bootm memory release Bug ?
To: "Gabor Janak (g.janak@agilion.de)" <g.janak@agilion.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Gabor,

On Wed, Mar 18, 2015 at 04:28:26PM +0000, Gabor Janak (g.janak@agilion.de) wrote:
> Hi,
> 
> I have one little question.
> In [barebox.git] / common / bootm.c Line 201
> 
> 196        if (data->verify) {
> 197                 ret = uimage_verify(data->os);
> 198                 if (ret) {
> 199                         printf("Checking data crc failed with %s\n",
> 200                                         strerror(-ret));
> 201                         uimage_close(data->os);
> 202                         return ret;
> 203                 }
> 204         }
> 
> The uimage is closed but data->os is not set to NULL.
> 
> If this function is called from  bootm_boot in
> 472                 ret = handler->bootm(data);
> 
> and
> 482         if (data->os)
> 483                 uimage_close(data->os);
> 
> will crash free something ....
> Will end in a possible
> unable to handle paging request at address 0xfe148f0e
> 
> Is this a correct analyze ?
> If yes, it's enough to add an data->os=NULL after uimage_close ?

Yes, this seems to be a bug. Alternatively we could just skip the
uimage_close in the bootm_open_os_uimage error paths.

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
