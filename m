Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6qL-0004cf-Gb
 for barebox@lists.infradead.org; Fri, 22 Nov 2019 11:11:19 +0000
References: <1574411664-11733-1-git-send-email-duhuanpeng@loongson.cn>
 <a3ba081f-5789-1f6c-cdba-e09a13561d7d@rempel-privat.de>
 <20191122094639.GA13533@brew>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <ac7ed1a9-4632-644b-da7a-d642ca3ecc68@rempel-privat.de>
Date: Fri, 22 Nov 2019 12:11:13 +0100
MIME-Version: 1.0
In-Reply-To: <20191122094639.GA13533@brew>
Content-Language: en-US
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
Subject: Re: [PATCH] MIPS: Makefile: minor codingstyle fix
To: Tim Williams <u74147@gmail.com>
Cc: barebox@lists.infradead.org

Am 22.11.19 um 10:46 schrieb Tim Williams:
> On Fri, Nov 22, 2019 at 10:08:55AM +0100, Oleksij Rempel wrote:
>> Hi,
>>
>> it is a bit more then just minor codingstyle fix. Can you please describe what was wrong and why the
>> change makes it better.
> There is nothing wrong with it. :)
> I am going to add one more after this line.I didn't know which codingstyle
>  to follow. so I send this patch to make this line's codingstyle the same
> with previously lines.

Ah.. i see now.

Actually all of this lines haw incorrect coding style. It should be 80
char width style.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
