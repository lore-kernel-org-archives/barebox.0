Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-dm3nam03on0109.outbound.protection.outlook.com
 ([104.47.41.109] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT3VZ-0004he-Dw
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 09:23:23 +0000
From: "Dold, Wolfram" <Wolfram.Dold@allegion.com>
Date: Mon, 16 Jan 2017 09:22:57 +0000
Message-ID: <3ad4db8b-5686-5b9e-084d-b85b2bacbd57@allegion.com>
References: <9bb241fd-643b-f0fc-e377-a86c79c552e1@allegion.com>
 <20170116083349.hvw6iapklok73ll7@pengutronix.de>
In-Reply-To: <20170116083349.hvw6iapklok73ll7@pengutronix.de>
Content-Language: en-US
Content-ID: <C583B78B1A123D4CA294B53B8532A94C@prod.exchangelabs.com>
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
Subject: Re: Secure trusted boot mechanism
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sascha,
thanks for your fast reply.

On 16.01.2017 09:33, Sascha Hauer wrote:
> Hi Wolfram,
> 
> On Mon, Jan 16, 2017 at 08:26:44AM +0000, Dold, Wolfram wrote:
>> Hi all,
>> I wanted to ask if barebox supports any kind of secure boot mechanism like FIT-Image or
>> any other type of verified secure trusted boot?
> 
> Yes, barebox does support FIT images.
> It also supports HAB on i.MX machines, although this is only for
> starting trusted bootloaders from the ROM, not for starting trusted
> kernels.
We have an TI AM335x Machine. As I understood the only way in such an environment to boot a trusted kernel is FIT?
What we wnat to do is to prevent the device from being hijacked.
Do you know another way than FIT to do that?
Is there any documentation available regarding barebox and FIT?

Wolfram
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
