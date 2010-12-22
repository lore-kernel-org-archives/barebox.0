Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVU7h-0006MQ-Cg
	for barebox@lists.infradead.org; Wed, 22 Dec 2010 19:13:18 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3oc8gcae3.fsf@intrepid.localdomain>
	<20101222005722.GD19266@game.jcrosoft.org>
Date: Wed, 22 Dec 2010 20:13:06 +0100
In-Reply-To: <20101222005722.GD19266@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Wed, 22 Dec 2010 01:57:22 +0100")
Message-ID: <m3fwtp62pp.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 10] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

>> +#define BAREBOX_START        0x00000
>> +#define BAREBOX_LENGTH       0x34000
>> +#define NPE_A_START          (BAREBOX_START + BAREBOX_LENGTH)
>> +#define NPE_A_LENGTH         0x05000
>> +#define NPE_B_START          (NPE_A_START + NPE_A_LENGTH)
>> +#define NPE_B_LENGTH         0x03000
>> +#define NPE_C_START          (NPE_B_START + NPE_B_LENGTH)
>> +#define NPE_C_LENGTH         0x04000
>> +#define NPE_ENV0_START       (NPE_C_START + NPE_C_LENGTH)
>> +#define NPE_ENV0_LENGTH      0x20000
>
> btw you have a lots of whitespace please use tab for indent

Well, I try to use tabs for syntactic indentation exclusively.
I admit I haven't checked the patches for this, and some spaces could
have slipped through e.g. copy+paste. Will check.

OTOH I use spaces for visual alignment (as shown above) and I consider
it the right thing. It makes the text display correctly with any tab
length setting. This has been somehow agreed on linux-kernel (though
definitely not unanimously) and I think Barebox tries to duplicate Linux
coding style.

Not that it matters a lot, can change it all to tabs if that's what
Barebox needs.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
