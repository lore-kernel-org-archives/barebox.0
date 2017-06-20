Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNDhW-0001f8-RQ
 for barebox@lists.infradead.org; Tue, 20 Jun 2017 07:35:52 +0000
Date: Tue, 20 Jun 2017 09:35:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170620073505.5j424abxcpezwizd@pengutronix.de>
References: <20170619144039.20552-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170619144039.20552-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/3] Fix "i.MX: vf610: Ramp CPU clock to maximum frequency"
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, cphealy@gmail.com

On Mon, Jun 19, 2017 at 07:40:36AM -0700, Andrey Smirnov wrote:
> Everyone,
> 
> It looks like my test setup was somehow contaminated -- possibly by
> using JTAG to initalize SoC and upload Barebox binary -- so
> 21921f7f419dfaabcd385595ada24f0352310f1a ("i.MX: vf610: Ramp CPU clock
> to maximum frequency") didn't actually work as I thought it was and
> instead it made Barebox not boot on Vybrid.
> 
> This patch series contains all of the changes I had to make in order
> to make CPU clock switching work/"unbreak" Barebox on Vybrid.

You mean you want to have this series on master, right?

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
