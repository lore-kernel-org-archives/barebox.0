Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpBjO-0004sI-Qm
 for barebox@lists.infradead.org; Thu, 31 Jan 2019 12:46:13 +0000
Date: Thu, 31 Jan 2019 13:46:05 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190131124605.s4oq5pzigbjk2avv@pengutronix.de>
References: <19d6d395-5263-26f0-b940-abbe60a0fc1b@nexgo.de>
 <CAHQ1cqG3YLtHG8TsNnEk2Wk4h1KEA1YBzzkXUXPTM6Ffe0mFQw@mail.gmail.com>
 <ae549ae2-65a0-f63b-2d52-8c190c90bbb6@nexgo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae549ae2-65a0-f63b-2d52-8c190c90bbb6@nexgo.de>
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
Subject: Re: bootm of 2019.01.0 doesn't load/start images
To: Kai Volkmar <kai.volkmar@nexgo.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Hi Kai,

On Thu, Jan 31, 2019 at 11:47:54AM +0100, Kai Volkmar wrote:
> On 31.01.19 00:35, Andrey Smirnov wrote:
> > On Wed, Jan 30, 2019 at 11:26 AM Kai Volkmar <kai.volkmar@nexgo.de> wrote:
> thanks for your quick answer. I'm not familiar with git bisect yet, but
> I just identified the last working and the first defective release.
> 
> 18.07.2 works (as well as 18.07.0 did), 18.08.0 doesn't.

Git bisect does the same as you (pobably manually) did just now, but
more efficiently with a binary search. Here is a short descriptive
chapter in the Git book:

https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
