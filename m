Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn8sC-0003aV-75
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 12:42:33 +0000
Received: by wyf23 with SMTP id 23so448220wyf.36
	for <barebox@lists.infradead.org>; Sat, 30 Jul 2011 05:42:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110730121043.GJ25658@game.jcrosoft.org>
References: <1312004257-7009-1-git-send-email-plagnioj@jcrosoft.com>
	<CAA4bVAHVAbNCHcXY7_3Pp1hHZNRdh7rv7p5AHs7V4yUUnaP6+w@mail.gmail.com>
	<20110730121043.GJ25658@game.jcrosoft.org>
Date: Sat, 30 Jul 2011 16:42:28 +0400
Message-ID: <CAA4bVAGmZ_sh0-zk7CoC-M6CCmaj8qfekHeS6_L=W6WcdDb9Gg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] ns16550: switch to resource
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 30/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> On 16:07 Sat 30 Jul     , Antony Pavlov wrote:
>> On 30/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>> wrote:
>>
>> > +static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
>> > +{
>> > +	struct device_d *dev = cdev->dev;
>> > +	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
>> > +	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
>> > +	
>> > +	off <<= plat->shift;
>> > +
>> > +	if (plat->reg_read)
>> > +		return plat->reg_read((unsigned long)dev->priv, off);
>> >
>>
>> So, this code __always__ make swap before calling platform-dependent
>> reg_read (if any).
>> And platform-dependent reg_read must assume the presence of the shift.
>>
>> I propose this variant:
>> ---------------------------
>> if (plat->reg_read)
>> 	return plat->reg_read((unsigned long)dev->priv, off);
>>
>> off <<= plat->shift;
> the idea is avoid duplicated code in reg_read
>
> if you do not want the shift you let shift at 0

Yeah, but this code make shift __always__, for every device, even if
device need no shift.

There is another way to reduce duplication of code. I shell send the
patch latter.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
