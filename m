Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x232.google.com ([2607:f8b0:400d:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNWX8-0005lU-Jy
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 03:42:24 +0000
Received: by mail-qk0-x232.google.com with SMTP id r62so73284146qkf.0
 for <barebox@lists.infradead.org>; Tue, 20 Jun 2017 20:42:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170620073505.5j424abxcpezwizd@pengutronix.de>
References: <20170619144039.20552-1-andrew.smirnov@gmail.com>
 <20170620073505.5j424abxcpezwizd@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 20 Jun 2017 20:41:59 -0700
Message-ID: <CAHQ1cqGe_1cq_0XVOgG=oVXPg7bnoZ5t0cTT+5j8rruLiTOKVQ@mail.gmail.com>
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
Subject: Re: [PATCH 0/3] Fix "i.MX: vf610: Ramp CPU clock to maximum frequency"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

On Tue, Jun 20, 2017 at 12:35 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Jun 19, 2017 at 07:40:36AM -0700, Andrey Smirnov wrote:
>> Everyone,
>>
>> It looks like my test setup was somehow contaminated -- possibly by
>> using JTAG to initalize SoC and upload Barebox binary -- so
>> 21921f7f419dfaabcd385595ada24f0352310f1a ("i.MX: vf610: Ramp CPU clock
>> to maximum frequency") didn't actually work as I thought it was and
>> instead it made Barebox not boot on Vybrid.
>>
>> This patch series contains all of the changes I had to make in order
>> to make CPU clock switching work/"unbreak" Barebox on Vybrid.
>
> You mean you want to have this series on master, right?
>

I didn't really think about it, but yeah It probably would make sense
to apply it to master.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
