Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho5VQ-0006qV-7c
 for barebox@lists.infradead.org; Thu, 18 Jul 2019 12:27:29 +0000
References: <1562758050-447264-1-git-send-email-s.riedmueller@phytec.de>
 <20190711070147.weq5bwqh4adw6sfe@pengutronix.de>
 <cdbaf9d5-940e-db3a-3df9-db3bba5a3ed4@phytec.de>
 <a845e767-c324-127d-efdd-de5f26bd92c4@phytec.de>
 <20190718121916.3pfn6qp2uql3uc42@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <44406615-12ec-2ff4-bc02-d69a3e0cc031@phytec.de>
Date: Thu, 18 Jul 2019 14:27:25 +0200
MIME-Version: 1.0
In-Reply-To: <20190718121916.3pfn6qp2uql3uc42@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: ubi: Max out default wear-leveling threshold
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 18.07.19 14:19, Sascha Hauer wrote:
> On Thu, Jul 18, 2019 at 10:24:52AM +0200, Stefan Riedm=FCller wrote:
>> Hi Sascha,
>>
>> do you guys have an idea or proposal how to disable the wear-leveling
>> properly? I will gladly take another look at it and it would be nice to =
get
>> your input as I only started to dive into ubi.
> =

> What I meant was simply something like this:
> =

> #define UBI_WL_THRESHOLD INT_MAX
> =

> Put a comment above it why it is done and remove the Kconfig entry for
> it and be done.
> =

> We found out that UBI wear leveling doesn't work reliably in barebox, so
> we should make sure that it's disabled completely and not just change
> the defaults (which could be changed back by an unwary user)

I understand. I had something different in mind.

I'll change it and send a v2.

Stefan

> =

> Sascha
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
