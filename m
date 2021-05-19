Delivery-date: Wed, 19 May 2021 12:40:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljJcs-000477-JO
	for lore@lore.pengutronix.de; Wed, 19 May 2021 12:40:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljJcr-0001PQ-Mm
	for lore@pengutronix.de; Wed, 19 May 2021 12:40:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y76XZrPyhC1jK2bxOu0GP5IoIeD/T1iEQnn8g6Q554A=; b=SXjnXnLEnsAXDRwnltr4LD+EU
	fJgsdeHBCYwn00X/4KKJ4FrZYH1Z1dEEz2TdpEKYoCmebRLUolSaFufXLwT+63VbI6Mm4FfO9ZiOz
	pBc8wfVj9xgPrTzi8LT3hWkNoZ5sLAnHfsrZ3sBei8G5AoDZmcKcWJ5nKwicJNsB7Z4dMCMfAZA5I
	Fwyq3hYhNcLwhb/ae+mcCC6aI05dde5/hdvmabpoVnGtRk11Gf8x5OUomqvW20bimaLtNM9o22d0a
	SGrA2I3PkufpCLAFLbag3uUSDuHz1iWsUOJmdBVF7l+qO/97ZTep4G3b2oQecOgvnHbEWT11pMixL
	3WiCfxkqw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljJbq-003bqt-7d; Wed, 19 May 2021 10:39:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJbm-003bqV-Rv
 for barebox@desiato.infradead.org; Wed, 19 May 2021 10:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=P7U1XWOYrL10aQZpb6qghqMIt5Spsrf545CsiuUkjas=; b=aLCUpaF5y7SlRPL3EcCMn3Eq5i
 8ySI3R5Vh61G3BmzoT+NJdsFcG9x3DUuCYp9I4KGz+6lmLTEtiQPcGMTssArv7p7ZCO1ZdFPVEwbj
 x91R3vF+QgoN0gjiQPGAVTN+LQa7k+YBajQR0gonIk5HWuzC259YqP2bKe6p4q5kpeqj6kGBtCKza
 T3hVfYcUg7DG8yIDv2Wfa27uP6HGrEzmouIsHwh/vdzYs5bLK1hmziJ7v3FNvyTdLL0FxxWpulBHI
 BHKSHApdBaIC6rhL0CMUDP+FTnFjTOkccaHMzVfZVWYb7RdKdWuRaeIopTZi0+sy8SBIUKQGzYxul
 L75B0C/w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJbk-00FMNk-24
 for barebox@lists.infradead.org; Wed, 19 May 2021 10:39:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ljJbh-0001Hv-2H; Wed, 19 May 2021 12:39:17 +0200
To: Laszlo Sitzer <laszlo.sitzer@native-instruments.de>,
 barebox@lists.infradead.org
References: <CACBqSLPEq5gbag1yFs8Sb33B=uJVvYSd3mBj+X6w1vNKqQH-ig@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <72df0047-e579-8c3b-5a68-0aca241f4456@pengutronix.de>
Date: Wed, 19 May 2021 12:39:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CACBqSLPEq5gbag1yFs8Sb33B=uJVvYSd3mBj+X6w1vNKqQH-ig@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_033920_135352_E4CE85B3 
X-CRM114-Status: GOOD (  26.56  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: configuring state framework for x86/EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Laszlo,

On 19.05.21 11:47, Laszlo Sitzer wrote:
> Hello,
> 
> I have a x86/EFI system with barebox running (without state framework).
> I noticed using the nv command persists values but I can't seem to
> understand where these physically get stored. Is there a way I could
> determine that?

EFI variables; You should see something like:
environment load /efivars/barebox-env-5b91f69c-8b88-4a2b-9269-5f1d802b5175: No such file or directory

first time you boot when you have no environment stored yet.

> I  would like to use the state framework (in order to be able to use
> barebox-state to reset bootchooser counters). In order to do so I have
> to write my state.dts, but I don't know which backend to choose in
> order to use the same location as nv used before.

If you have atomic EFI variables, you could use those directly for
next boot slot selection without involving barebox-state.

If they aren't atomic, you will likely not want them as backing
store for barebox-state either. For such cases you can create a
partition and use that as backend.
> I am not asking to use nv and state at the same time but rather have
> state framework use the location that nv used. Does that make sense?

It does. Here's an example:

/ {
	aliases {
		state = &state;
	};

	state: state {
		magic = <0xDEADBEEF>;
         	backend-type = "raw";
         	backend = <&state_part>;
         	backend-stridesize = <4096>; /* partition must be at least 3x this */
		
		/* your variables */
	};

	partitions {
        	compatible = "fixed-partitions";

	        state_part: state {
                	partuuid = "your-part-uuid";
        	};
	};
};

Adjust your partitioning accordingly, compile the DT, store it
in /boot/EFI/barebox/state.dtb and use the most recent
version of the barebox-state userspace utility and you should be good to go.

If you think the documentation here can be improved, patches are always
welcome :-)

Cheers,
Ahmad

> 
> Best, Lazlo
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

