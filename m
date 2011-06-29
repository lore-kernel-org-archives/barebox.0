Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qbpah-0006Od-UB
	for barebox@lists.infradead.org; Wed, 29 Jun 2011 07:53:44 +0000
Received: by wwf22 with SMTP id 22so701105wwf.18
	for <barebox@lists.infradead.org>; Wed, 29 Jun 2011 00:53:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110629054034.GA17355@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<20110629054034.GA17355@game.jcrosoft.org>
Date: Wed, 29 Jun 2011 11:53:38 +0400
Message-ID: <BANLkTi=43WmVwBP3coG7-01hgaB5bcj-nA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] Add MIPS arch support to barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 29 June 2011 09:40, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
>> diff --git a/arch/mips/boot/head.S b/arch/mips/boot/head.S
>> new file mode 100644
>> index 0000000..f5712b8
>> --- /dev/null
>> +++ b/arch/mips/boot/head.S
> I really do not like this startup code
>
> can we found away to use Shinya-san
> init code

I need one or two days to carry works.

Have you other criticism?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
