Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZxsj-0007vn-5B
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 14:01:26 +0000
Date: Wed, 27 Nov 2019 15:01:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191127140119.s74kk4y5nkqonzjr@pengutronix.de>
References: <20191126115119.GA20169@brew>
 <20191126130357.GA23625@brew>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126130357.GA23625@brew>
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
Subject: Re: macro about loongson's CPU & SoC
To: Du Huanpeng <duhuanpeng@loongson.cn>
Cc: barebox@lists.infradead.org

On Tue, Nov 26, 2019 at 09:03:58PM +0800, Du Huanpeng wrote:
> > The name CPU_LOONGSON1B is used in the linux kernel.
> > Please keep barebox macro name in sync with linux kernel.
> shall we use the rules in a "balanced" way? :)
> 
> the name CPU_LOONGSON1B is used in the kernel, it is true.
> if you dive into the source tree, you will find more~
> 
> in bootloader, do we need so many kinds of CPU, are they
> realy different? two or three ISA set(CPU) is enough for
> loongson's chip(see the table in my last mail) to run barebox.

It's probably least confusing to stick with the kernel here.
If you want to map these symbols to two or three ISA sets you actually
need then this is fine.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
