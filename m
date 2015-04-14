Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi6XM-0008VC-IL
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 19:30:21 +0000
Received: by wiun10 with SMTP id n10so34287461wiu.1
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 12:29:58 -0700 (PDT)
Message-ID: <552D6AB3.2070505@gmail.com>
Date: Tue, 14 Apr 2015 21:29:55 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1428627714-17077-5-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428934950-6836-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20150414185207.GG9742@pengutronix.de>
In-Reply-To: <20150414185207.GG9742@pengutronix.de>
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
Subject: Re: [PATCH v2] USB: xHCI: Sync non-coherent DMA buffers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14.04.2015 20:52, Sascha Hauer wrote:
> On Mon, Apr 13, 2015 at 04:22:30PM +0200, Sebastian Hesselbarth wrote:
>> ---
>> Changelog:
>> v1->v2:
>> - balance dma_sync_single_foo() calls (Reported by Lucas Stach)
>>
>> Cc: barebox@lists.infradead.org
>> Cc: Lucas Stach <dev@lynxeye.de>
>
> Seems your git send-email ignored this.

Did it? I checked the original mail's header and it says:

From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org, Lucas Stach <dev@lynxeye.de>
Subject: [PATCH v2] USB: xHCI: Sync non-coherent DMA buffers

I also checked http://www.spinics.net/lists/u-boot-v2/msg23105.html
which does not show Lucas on Cc.

@Lucas, did you receive the original mail or should I worry about
my git-email setup?

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
