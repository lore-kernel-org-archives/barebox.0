Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQbfL-00023L-6F
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 10:24:55 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 42609FFC631
 for <barebox@lists.infradead.org>; Tue, 23 Oct 2012 12:34:36 +0200 (CEST)
Date: Tue, 23 Oct 2012 12:22:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121023102240.GI21588@game.jcrosoft.org>
References: <20121017130320.GF30038@game.jcrosoft.org>
 <20121023084426.GP27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121023084426.GP27665@pengutronix.de>
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
Subject: Re: [PATCH 0/2] allow to use named resources
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:44 Tue 23 Oct     , Sascha Hauer wrote:
> On Wed, Oct 17, 2012 at 03:03:20PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	add helper to use named resources and use it on nomadik
> 
> Do we need this? devicetree does not have named resources, so with
> devicetree support we are back to some arbitrary numbered resource
> anyway.
> 
devicetree does have it I use on spear and I'm going to ues on at91 too

for spear13xx.dtsi

                fsmc: flash@b0000000 {
                        compatible = "st,spear600-fsmc-nand";
                        #address-cells = <1>;
                        #size-cells = <1>;
                        reg = <0xb0000000 0x1000        /* FSMC Register */
                               0xb0800000 0x0010>;      /* NAND Base */
                        reg-names = "fsmc_regs", "nand_data";
                        interrupts = <0 20 0x4
                                      0 21 0x4
                                      0 22 0x4
                                      0 23 0x4>;
                        st,ale-off = <0x20000>;
                        st,cle-off = <0x10000>;
                        status = "disabled";
                };

Best Regards,
J.
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
