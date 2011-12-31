Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RgzE9-0007R8-MG
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 13:44:03 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1324503044-6085-1-git-send-email-robert.jarzmik@free.fr>
 <20111231082920.GB16816@game.jcrosoft.org>
Date: Sat, 31 Dec 2011 14:43:50 +0100
In-Reply-To: <20111231082920.GB16816@game.jcrosoft.org> (Jean-Christophe
 PLAGNIOL-VILLARD's message of "Sat, 31 Dec 2011 09:29:20 +0100")
Message-ID: <877h1cua95.fsf@free.fr>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V4 1/7] drivers/mtd: move nand.c into core.c
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

> On 22:30 Wed 21 Dec     , Robert Jarzmik wrote:
>> Move nand core into the global MTD core.
>> 
>> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
>> ---
> the nand support is broken
Hi Jean-Christophe,

Sasha tested it on his pcm043 board, and everything worked fine.
Could you be more specific when you say "NAND support is broken" ? Which board,
which NAND, which barebox tree (today's next ?), and which commands do you input
that make you say "doesn't work" ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
