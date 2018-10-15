Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBtdb-0007Zh-OG
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 03:33:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id q5-v6so19488080wrw.12
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 20:33:37 -0700 (PDT)
MIME-Version: 1.0
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
In-Reply-To: <20181015022125.24020-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 20:33:24 -0700
Message-ID: <CAHQ1cqH33n2ZHt2F4RvrobO8vFNo=DWrLnZ6uy8Zt8n6ZF4YUA@mail.gmail.com>
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
Subject: Re: [PATCH v3 00/22] MV88E6xxx switch family support
To: Barebox List <barebox@lists.infradead.org>

On Sun, Oct 14, 2018 at 7:21 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Everyone:
>
> Patches in this series are a result of my work on porting Linux code
> for MV88E6xxx switches to Barebox.
>
> Tested on the following H/W:
>
>      - ZII i.MX6Q RDU2, MV88E6352 switch
>      - ZII i.MX51 RDU1, MV88E6161 switch
>      - ZII i.MX7D RPU2, MV88E6352 switch
>      - ZII VF610 CFU1, MV88E6352 switch
>      - ZII VF610 SPU3, MV88E6390X switch

Slight correction, the line above should read:

    -  ZII VF610 SPU3, MV88E6390 switch

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
