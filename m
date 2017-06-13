Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKgLq-0003ZL-6e
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 07:34:59 +0000
Date: Tue, 13 Jun 2017 09:34:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170613073436.gnmmrbbtiqkwif5t@pengutronix.de>
References: <1270235505.6719556.1497082449606.ref@mail.yahoo.com>
 <1270235505.6719556.1497082449606@mail.yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1270235505.6719556.1497082449606@mail.yahoo.com>
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
Subject: Re: How to use eMMC/SD DOS partitions as backend for the state
 framework?
To: B Gol <behnam_golds@yahoo.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

On Sat, Jun 10, 2017 at 08:14:09AM +0000, B Gol wrote:
> Hi,
> I was trying to figure out the state framework recently , and found out 
> that till version 2017.04.0 it kinda works with the following lines in 
> my dtb :
> 
> #############################################################################
> 
> / {
>   state: state {
>         magic = <0x27031977>;
>         compatible = "barebox,state";
>         backend-type = "dtb";
>         backend-storage-type = "direct";
>         backend-stridesize = <0x500>;
>         backend = &mmc1, "partname:6";

Sorry, this doesn't work. We updated the binding, the backend must
be a phandle to the partition which contains the state data, like
this:

backend = <&mmc1_state>;

&mmc1 {
	mmc1_state: state@0x80000 {
		reg = <0x80000 0x80000>;
                label = "state-sd";
	};
};

Currently it is not possible to directly point to a DOS/GPR partition. We
are still looking for solutions to this problem.

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
