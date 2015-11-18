Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zz6z5-000806-Bd
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 17:57:32 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 18 Nov 2015 17:56:47 +0000
Message-ID: <1447869408.4553.168.camel@rtred1test09.kymeta.local>
References: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
In-Reply-To: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
Content-Language: en-US
Content-ID: <374EF4A1DF84CD44B4EF0A9F8C63E230@kymetacorp.com>
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
Subject: Re: [PATCH 1/4] ARM: ccxmx53: Add support for Digi ccxmx53 board.
To: Jason Cobham <cobham.jason@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2015-11-17 at 20:27 -0800, Jason Cobham wrote:

> +
> +&esdhc3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_esdhc3>;
> +	bus-width = <4>,<8>;
> +	non-removable;
> +	status = "okay";
> +};


Neither barebox nor the kernel support a list of values for bus-width.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
