Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x233.google.com ([2a00:1450:400c:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bd1eh-0005kT-S5
 for barebox@lists.infradead.org; Thu, 25 Aug 2016 20:53:44 +0000
Received: by mail-wm0-x233.google.com with SMTP id i5so90312846wmg.0
 for <barebox@lists.infradead.org>; Thu, 25 Aug 2016 13:53:23 -0700 (PDT)
References: <7f89efef-2805-34d8-db7d-f3bc53d8e21a@gmail.com>
 <20160818073831.GL20657@pengutronix.de>
 <2b1f58b6-7d4b-5b85-240e-aa41c2e23c2e@gmail.com>
 <8b40b96f-0414-4566-1215-e1d6bb7abab1@gmail.com>
 <20160822061049.GC20657@pengutronix.de>
 <63af30cc-9fd5-3283-a9f2-9e98e507d581@gmail.com>
 <cacf597f-e684-44e0-84c5-9366481dbed2@gmail.com>
 <20160824122441.GH20657@pengutronix.de>
From: Peter Kardos <kardos.peter.sk@gmail.com>
Message-ID: <6f76960b-6b60-622f-3001-151230bd38d6@gmail.com>
Date: Thu, 25 Aug 2016 22:53:11 +0200
MIME-Version: 1.0
In-Reply-To: <20160824122441.GH20657@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: AT91RM9200 hang in atmel_serial_putc
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Can confirm, with v2016.08 + patch the system boots and seems to work as 
expected.

Thanks for your help with this issue.

Cheers, Peter


On 8/24/2016 2:24 PM, Sascha Hauer wrote:
> Hi Peter,
>
> On Mon, Aug 22, 2016 at 10:39:24PM +0200, Peter Kardos wrote:
>> Hi Sascha,
>>
>> I've tested your workaround and it seems to work; the board starts and
>> attempts
>> to boot.
> I just sent a proper solution for that problem, you're on Cc. I'm
> confident that this solves your problem. Could you give this a test
> please?
>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
