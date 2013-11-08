Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x232.google.com ([2a00:1450:4013:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VelYX-00036t-TY
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 12:52:58 +0000
Received: by mail-ea0-f178.google.com with SMTP id a10so894525eae.9
 for <barebox@lists.infradead.org>; Fri, 08 Nov 2013 04:52:33 -0800 (PST)
Message-ID: <527CDE8B.8000003@gmail.com>
Date: Fri, 08 Nov 2013 13:52:27 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1383728519.178149099@f98.i.mail.ru>
 <20131106095727.GJ24559@pengutronix.de>
In-Reply-To: <20131106095727.GJ24559@pengutronix.de>
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
Subject: Re: dt-bindings status
To: Sascha Hauer <s.hauer@pengutronix.de>, Alexander Shiyan <shc_work@mail.ru>
Cc: barebox <barebox@lists.infradead.org>

On 11/06/13 10:57, Sascha Hauer wrote:
> On Wed, Nov 06, 2013 at 01:01:59PM +0400, Alexander Shiyan wrote:
>> Hello.
>>
>> DTS files from the current kernel require "include/dt-bindings".
>> Are there plans to add these parts of the kernel tree in the barebox?
>> Thanks.
>
> We should add this for barebox aswell once we need it. Right now I
> haven't missed it. If you need it feel free to add it.

I miss it! :)

I haven't found a way to tell dtc's cpp that those includes are in
include/dt-bindings, but I didn't look very hard.

Currently, I have them in arch/arm/dts/dt-bindings which works but
is not the right place, for sure.

I'd be happy if Alexander comes up with a patch.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
