Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clIQX-0001tW-AO
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 16:57:36 +0000
Received: from player786.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id 9546CDE33D
 for <barebox@lists.infradead.org>; Tue,  7 Mar 2017 17:57:09 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20170307163416.GA26868@ravnborg.org>
Date: Wed, 8 Mar 2017 00:56:55 +0800
Message-Id: <CF3DB1E1-345D-45EB-BF5F-1CAEA118B0DA@jcrosoft.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
 <20170307163416.GA26868@ravnborg.org>
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
Subject: Re: [PATCH 00/45] AT91, at91sam9x5ek updates
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org


> On Mar 8, 2017, at 12:34 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> 
> Hi Andrey.
> 
> On Mon, Mar 06, 2017 at 02:53:11PM -0800, Andrey Smirnov wrote:
>> Hi everyone,
>> 
>> I recently had a chance to work with at91sam9x5ek board and as a part
>> of that effort I converted the code to support features found in
>> Barebox for i.MX based SoCs. Most notably this patchset converts
>> at91sam9x5ek to use multi-image PBL build process as well as adds
>> support for board initialization from attached devicetree blob.
> 
> Impressive series - looks good! And timing was good.
> 
> I have a proprietary at91sam9263 based bord that is familiar
> with the 9263 evaluation kit.
> The current bootloader is latest bootstrap + an ancient U-Boot.
> As we have another board (i.MX6 based) there is some synergy into
> using the same bootloader on both boards.
> 
> Can you give any hints on what needs to be done on top of
> your patch-set to support the 9263 evalutation kit?
> 
> When booting from an SD-Card/NOR-Flash/USB would I then need
> to use at91bootstrap, or can I use only barebox?
> 
> If I move forward with this and I can find an 9263
> evaluation kit I would then also update this.
On 9263 the sram is huge so you can build barebox as first stage

I add this a long time ago on usb_a9263_bootstrap_defconfig
or other (all the EK).

This will build a barebox that can load you image from multiple source in a sequence

and then use a std barebox

To switch to DT you will have to import the DT I did for the kernel
and replace the hw i2c by a i2c gpio as the i2c IP on at91 has a lot of quirks
and for barebox it will not make sense to port it

Best Regards,
J.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
