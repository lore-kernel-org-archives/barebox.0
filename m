Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x244.google.com ([2607:f8b0:4001:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQlWJ-00075b-T7
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 00:42:08 +0000
Received: by mail-ig0-x244.google.com with SMTP id ks5so1666207igb.0
 for <barebox@lists.infradead.org>; Tue, 02 Feb 2016 16:41:47 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160201093519.GP13058@pengutronix.de>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
 <1454296213-12734-9-git-send-email-andrew.smirnov@gmail.com>
 <20160201093519.GP13058@pengutronix.de>
Date: Tue, 2 Feb 2016 16:41:46 -0800
Message-ID: <CAHQ1cqGxkLm8axj4TGH4=NnyLjj-HupmD_5Df-tpMgAFsMN9Ug@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 8/8] miitool: Add code to register a PHY
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Feb 1, 2016 at 1:35 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Sun, Jan 31, 2016 at 07:10:13PM -0800, Andrey Smirnov wrote:
>> This commit changes the behaviour of the 'miitool'. Now in order to show
>> PHY's link information 'miitool' should be invoked as such:
>>
>> miitool -s [PHY]
>>
>> Also, implment code to allow to register a dummy PHY device in order to
>> be able to perform raw MDIO bus access.
>
> These are not necessarily dummy phy devices, in fact if they were you
> wouldn't be interested in them ;)

Poor choice of words, perhaps :-). Now that I think of it I think
"driver-less" would be a better description.

>
> Do we need a way to register an individual phy? Wouldn't it be enough to
> add a -f(orce) option to register all phys on all busses even if there's
> nothing detected on them?

If we go with "-f" we would still overwhelm the /dev with a lot of
devices (in my use-case 96 of them), it's just we won't do that on the
first run on "miitool".

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
