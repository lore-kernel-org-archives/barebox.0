Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aY7yh-0000mS-UQ
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 08:05:52 +0000
Date: Tue, 23 Feb 2016 09:05:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160223080530.GZ3939@pengutronix.de>
References: <CABQt-UmmZmRR9zPscx=8-eQ49eNUS7GQVxjBXs6D0OgiuWfquQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABQt-UmmZmRR9zPscx=8-eQ49eNUS7GQVxjBXs6D0OgiuWfquQ@mail.gmail.com>
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
Subject: Re: bootm crash - bad uimage?
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org

Hi Philippe,

On Mon, Feb 22, 2016 at 04:31:18PM +0100, Philippe Leduc wrote:
> Hello,
> 
> Since the commit 0a37e22d638acf1b2c7c6e6ab83b6a3272b0a11c, I can't
> boot my image anymore.
> It seems that os_part is a null pointer and simple_strtoul crash on it
> (in bootm_load_os). I workaround the problem by forcing the value to 0
> if os_part if null, but I guess that it is a bad solution.
> Is this a due to a bad usage of the mkimage utility?

Probably not. Is this fixed by this commit?

commit 1a180cd3b6e5c067c68f3e09f7e15e5b18af9761
Author: Lucas Stach <l.stach@pengutronix.de>
Date:   Fri Feb 12 17:58:23 2016 +0100

    bootm: parse initrd and oftree into correct struct members
    
    The code parsing the oftree and initrd file names is clearly wrong,
    leading to bootm not loading oftree or initrd files any more.
    
    Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
