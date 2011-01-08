Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbYvV-0007rK-Ef
	for barebox@lists.infradead.org; Sat, 08 Jan 2011 13:33:50 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m38vyym6k9.fsf@intrepid.localdomain>
	<m3vd22kq8q.fsf@intrepid.localdomain>
	<20110106233651.GB944@game.jcrosoft.org>
Date: Sat, 08 Jan 2011 14:33:16 +0100
In-Reply-To: <20110106233651.GB944@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Fri, 7 Jan 2011 00:36:51 +0100")
Message-ID: <m34o9jwmeb.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 3/3] ARM: Add support for IXP4xx CPU and for Goramo
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
> I prefer we use a fs to store it so we can share it Linux
> with a cramfs at least

I wonder... how do I create an read-only environment variable in the
board code? The variable should be created before env0 is mounted, but
shouldn't be destroyed by mounting env0.

I'm thinking of some
BAREBOX_PARTITIONS="0x34000@0(barebox),0xC000(barebox-cramfs)".
It must be able to survive saveenv followed by a barebox update (which
may change the cramfs address and size, i.e. the value saved in env0
must be discarded).
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
