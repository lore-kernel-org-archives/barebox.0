Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Se3FN-0000tb-JL
 for barebox@lists.infradead.org; Mon, 11 Jun 2012 11:57:26 +0000
Date: Mon, 11 Jun 2012 13:57:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120611115719.GO30400@pengutronix.de>
References: <CAHvDM_feUegqzvhH9oN19ooDvMkcKNrrx6sKP54txFBMD0oJqg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHvDM_feUegqzvhH9oN19ooDvMkcKNrrx6sKP54txFBMD0oJqg@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Problem with loadenv from /dev/env0
To: Benoit RAT <benoit@sevensols.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 11, 2012 at 01:53:13PM +0200, Benoit RAT wrote:
> Hello,
> 
> I want to recover some parameters from my NAND flash by using saveenv and
> loadenv but It does not work:
> 
> First I have used a big env0 partition to be sure bad blocks don't bother
> me.
> 
>  devfs_add_partition("nand0", 0x00000, 0xF0000, PARTITION_FIXED, "env_raw");
> > dev_add_bb_dev("env_raw", "env0");
> 
> 
> Then I try to edit,save & load /env/config
> 
> wrs-02:0B:AD:C0:FF:EE# edit /env/config
> 
> Then I change the eth0.addr
> 
> eth0.ethaddr=72:0B:AD:C0:FF:EE
> > PS1="wrs-$eth0.ethaddr# "
> 
> 
> Ctrl+D
> 
> wrs-02:0B:AD:C0:FF:EE# . /env/config
> wrs-72:0B:AD:C0:FF:EE# saveenv
> saving environment
> wrs-72:0B:AD:C0:FF:EE# loadenv
> loading environment from /dev/env0
> err -74
> err -74
> wrong crc on env

What hardware was this again?

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
