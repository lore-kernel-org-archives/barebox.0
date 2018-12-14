Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXiqE-0004vP-2F
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 08:29:03 +0000
Received: by mail-wr1-x443.google.com with SMTP id t27so4544665wra.6
 for <barebox@lists.infradead.org>; Fri, 14 Dec 2018 00:28:51 -0800 (PST)
MIME-Version: 1.0
References: <20181213071144.31691-1-andrew.smirnov@gmail.com>
In-Reply-To: <20181213071144.31691-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 14 Dec 2018 00:28:38 -0800
Message-ID: <CAHQ1cqGc+bY08A0V6kv-W+C+O-EjNoD6SCko2z-f-mfzj=rwSw@mail.gmail.com>
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
Subject: Re: [PATCH 00/58] PCI i.MX6/DesignWare sync up with 4.20-rc1
To: Barebox List <barebox@lists.infradead.org>

On Wed, Dec 12, 2018 at 11:11 PM Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
>
> Everyone:
>
> As a part of working on adding support for PCI on i.MX7D/8MQ, I spent
> some time looking through Linux commit history of pci-imx6.c and
> pcie-designware*.c and porting various patches to minimize the
> differences between the two codebases. This series is the result of
> that effort. All of the patches are either fixes for missed corner
> cases or code simplifications/improvements, so no functonal changes
> are expected.
>

As it turns out, i.MX8MQ support requires iATU unroll patches for
which I skipped in this version of the set. Will add in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
