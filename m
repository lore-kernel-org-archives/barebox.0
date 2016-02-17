Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVsVL-0006XX-St
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 03:10:16 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 17 Feb 2016 03:09:54 +0000
Message-ID: <1455678623.18517.81.camel@rtred1test09.kymeta.local>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
Content-Language: en-US
Content-ID: <C107482D1F80AB4789C11256DB592905@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 00/17] RFC for additional 'nvmem' plumbing
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2016-02-16 at 17:29 -0800, Andrey Smirnov wrote:
> Hi everyone,
> 
> The main purpose of this patchset is propose additional Nvmem plubing
> needed for that subsytem's inclusion in BB and solicit feedback about
> it (patches ## 15 to 17) . Included in this set are also a number of
> bugfixes and RFC-for-bugfixes for problems that were discoverd during
> development of this patch series.
> 
> Proposed Nvmem additions are two new platform device drivers that
> implement a nvmem interface on top of data embedded in DT as well as
> nvmem interface that allows to combine existing nvmem-accesible bytes
> into continuous blocks.
> 
> Below is an example of DT code that uses both drivers in order to
> create a MAC address as a combination of bytes from DT and OCOTP
> module:

So for a common case Sasha has pointed out, of the MAC in the opposite
byte order, one would write:

	scatter-gather-blob {
		compatible = "barebox,nvmem-sg";
		#address-cells = <1>;
		#size-cells = <1>;

		mac_address: combined-bits {
			reg = <0 6>;
			layout = <&fec_mac_address 5 1
			          &fec_mac_address 4 1
			          &fec_mac_address 3 1
			          &fec_mac_address 2 1
			          &fec_mac_address 1 1
			          &fec_mac_address 0 1>;
		};
	};

	&ocotp {
	        #address-cells = <1>;
	       	#size-cells = <1>;

		fec_mac_address: mac_address@88 {
			reg = <0x88 0x8>;
		};
	};

        &fec {
		?mac-address-location?? = <&mac_address>;
	};

I suppose that's a very powerful system, but it does seem a bit
cumbersome.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
