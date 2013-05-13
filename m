Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubvw4-0001NP-2s
 for barebox@lists.infradead.org; Mon, 13 May 2013 16:49:17 +0000
Received: by mail-bk0-f54.google.com with SMTP id it16so402102bkc.13
 for <barebox@lists.infradead.org>; Mon, 13 May 2013 09:48:52 -0700 (PDT)
Message-ID: <51911971.2040303@gmail.com>
Date: Mon, 13 May 2013 18:48:49 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de> <5190AFA1.1080503@gmail.com>
 <20130513105722.GP32299@pengutronix.de> <5190E56F.9080903@gmail.com>
 <20130513162313.4f5849a9@skate> <519110D0.5040801@gmail.com>
 <20130513182141.12af9b31@skate> <51911510.8050207@gmail.com>
 <20130513183418.4f9ce9e2@skate>
In-Reply-To: <20130513183418.4f9ce9e2@skate>
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
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On 05/13/13 18:34, Thomas Petazzoni wrote:
> On Mon, 13 May 2013 18:30:08 +0200, Sebastian Hesselbarth wrote:
>> Remap by kwbimage.cfg looks like a no-go.
>
> Looks like, yes. Thanks for the testing and investigation!

Turned out to be easier than I thought!

You can always read from 0xd0020080 (REG_BASE_REMAP) without lockup.

So if that what you read equals 0xd0000000, you are still on boot-up
reg bases. If not, and as long as we only remap to 0xf1000000 you are
remapped to 0xf1000000.

Sebastian



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
