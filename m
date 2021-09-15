Delivery-date: Wed, 15 Sep 2021 12:38:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQSJF-0004Ie-8z
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 12:38:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQSJE-0003Ip-Bg
	for lore@pengutronix.de; Wed, 15 Sep 2021 12:38:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bYHQX6Unl4gK2gnBAO9/+9Qa39GPSEUX3U/sfStFQ5U=; b=g+i0n9jQ/FAF4Jqihjhxm4wKQ+
	lD7Iljbz/3VgJ+IHtmoLfFEVqO9kVcxveVXuT8zl0A4R5+yIwUPK9Cv03a/ecSActq5AYZ2+5yoGM
	aEI2ah6wYk/jAHlswvsjq2E1jrcVSn9qzTkL5YaK/mV6DvDLL1QTzwdEFsRzjhhBmTeMGK04PqQ9X
	vo0UGhn8ZJ8OoLghpftn0Cx0cTbt2FmS4CWslL4QYHBkjXiPqk1YiOyymmq8yo6EzVlUhSIRZbzFd
	ZVrx9048QAa044R+gc1SEFgaiOG7O8ecR721mW8UMQ1km6a6nesJ9+gK0347Rdx0diWG/cg+rb2uQ
	GCJcC/og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQSHn-008ozT-GW; Wed, 15 Sep 2021 10:37:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQSHh-008oya-Ub
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 10:36:59 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQSHg-0003Dp-DU; Wed, 15 Sep 2021 12:36:56 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>,
 Barebox List <barebox@lists.infradead.org>
References: <20210905135122.7038-1-a.fatoum@pengutronix.de>
 <20210905135122.7038-5-a.fatoum@pengutronix.de>
 <CAMHeXxN_P3pVSAStL2Z=8La_ioGHNu2hw9qQyFYAJ1VNA8hiEQ@mail.gmail.com>
 <CAMHeXxP7Zg9r7fXYCzSYF-AZZAKmnxXMeG9uQqz5abP3BYiH8A@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <626fde06-86e7-662b-7a84-8e162a7f12a3@pengutronix.de>
Date: Wed, 15 Sep 2021 12:36:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAMHeXxP7Zg9r7fXYCzSYF-AZZAKmnxXMeG9uQqz5abP3BYiH8A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_033658_046377_54DB6DCB 
X-CRM114-Status: GOOD (  27.71  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/9] ARM: i.MX: extend drivers for i.MX8MN (Nano) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 08.09.21 21:01, Trent Piepho wrote:
> On Sun, Sep 5, 2021 at 6:52 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> Extend match tables and function definitions for i.MX USB, ATF,
>> MCI, NVMEM, pinctrl and serial drivers for the i.MX8M Nano.
>>
>> There is no special handling required for those, compared with
>> the mini.
> 
> It shouldn't be necessary to add them when there is no special
> handling.  The device tree should list the earlier type they are
> compatible with as well.  For example, every fsl,imx8*-usdhc I see in
> a device tree then lists fsl,imx7d-usdhc additionally.

I agree. I just searched for imx8mm and replicated the lines.

> Though the Barebox driver does NOT list fsl,imx7d-usdhc.  It works on
> the fsl,imx7d-usdhc because that is compatible with the
> fsl,imx6sl-usdhc.
> 
> Really, the error would seem to be the NXP devicetrees only listing
> imx7d as a compatible instead of going back to imx6sl.

The upstream device trees could be extended, but that's out of scope
for barebox support. I don't think we should hardcode this into
the barebox device tree.

> It is also interesting that in Barebox, the imx7d uses the imx6sl
> compat entry, and that entry includes ESDHC_FLAG_ERR004536.  While the
> imx8* is supposedly imx7d compatible, it uses the imx6sx entry that
> lacks that flag.  I think the error here is that imx7d does not have
> this erratum.

But barebox doesn't seem to do anything different respective to that
flag.

What would you suggest we do here (in barebox)?

Cheers,
Ahmad

> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

