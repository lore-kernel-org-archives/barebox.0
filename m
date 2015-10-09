Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkdPf-0001Cb-39
 for barebox@lists.infradead.org; Fri, 09 Oct 2015 19:33:08 +0000
Received: by wicge5 with SMTP id ge5so81717252wic.0
 for <barebox@lists.infradead.org>; Fri, 09 Oct 2015 12:32:45 -0700 (PDT)
Message-ID: <5618165B.2070500@gmail.com>
Date: Fri, 09 Oct 2015 21:32:43 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-6-git-send-email-sebastian.hesselbarth@gmail.com>
 <87612fam4r.fsf@belgarion.home>
In-Reply-To: <87612fam4r.fsf@belgarion.home>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 05/17] mtd: nand_mrvl_nfc: Remove keep_config
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On 09.10.2015 21:16, Robert Jarzmik wrote:
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
>
>> keep_config and it's corresponding DT property is meant for the
>> Linux kernel to keep the config setup by a boot-loader. As we
>> are the bootloader and it is not used at all, get rid of it.
>
> NAK on this one.
> We're the "secondary bootloader". The first code running is the pxa3xx ROM code,
> which initialized the NAND, read the OBMI, then read barebox, and transfered
> control.

Well, you are right with the secondary bootloader, but I doubt that
BootROM will _always_ have the optimal timings set but rather the
most conservative.

Also, as we are reusing the dts files that were made for Linux, it
may prevent barebox to pick more optimized settings.

Anyway, I am fine with keeping the keep-config parsing and remove
the property on some boards with using the barebox's dts overlays.

> It can be assumed that for stacked NAND, the ROM code's timings are more
> accurate than the generic ones, hence keep_config.

There is more issues here: Currently the binding of the nand
_controller_ also contains properties of the nand _device_, e.g.
mtd partitions are direct sub-nodes of the controller.

For the long run, i.e. including Linux rework, we should have
nand device sub-nodes, e.g.

nfc: nand@foo {
	compatible = "marvell,armada-370-nand";
	reg = <foo bar>;
	#address-cells = <1>;
	#size-cells = <0>;
	num-cs = <2>;

	flash@0 {
		reg = <0>; /* reg == CSn line */

		ecc-strength = <bla>;
		...

		partition@0 { ... };
	};

	flash@1 {
		reg = <1>;
		...
	};
};

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
