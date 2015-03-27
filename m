Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YbO7Z-0004iT-KG
 for barebox@lists.infradead.org; Fri, 27 Mar 2015 06:51:58 +0000
Date: Fri, 27 Mar 2015 07:51:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150327065132.GS9742@pengutronix.de>
References: <20150327103726.ce76e9f7bbb13fd557d17ce1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150327103726.ce76e9f7bbb13fd557d17ce1@gmail.com>
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
Subject: Re: hashsum.c:54:3: error: 'ret' undeclared (first use in this
 function)
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Fri, Mar 27, 2015 at 10:37:26AM +0400, Antony Pavlov wrote:
> Hi !
> 
> I can't build barebox/next for qemu-malta:
> 
>   CC      commands/hashsum.o
> commands/hashsum.c: In function 'do_hash':
> commands/hashsum.c:54:3: error: 'ret' undeclared (first use in this function)
>    ret = digest_set_key(d, key, keylen);

Yeah, my auto builder complained about that aswell. A fix is upstream
now. Thanks for noting.

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
