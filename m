Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PsX57-0000u1-1t
	for barebox@lists.infradead.org; Thu, 24 Feb 2011 09:01:54 +0000
Message-ID: <4D661E7A.8030605@eukrea.com>
Date: Thu, 24 Feb 2011 10:01:46 +0100
From: Eric Benard <eric@eukrea.com>
MIME-Version: 1.0
References: <4D656F66.8030501@eukrea.com>
	<20110224083925.GO7381@pengutronix.de>
In-Reply-To: <20110224083925.GO7381@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX51 & MMU
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 24/02/2011 09:39, Sascha Hauer wrote:
> On Wed, Feb 23, 2011 at 09:34:46PM +0100, Eric Benard wrote:
>> Hi,
>>
>> has anyone recently tested barebox master on a babbage board with
>> MMU enabled ? Here (not on a babbage, with a TO2 i.MX515 with 1 bank
>> of DDR2), enabling MMU crash the board (which works fine with
>> barebox with MMU disabled and with Linux 2.6.38-rc6 so the hardware
>> seems not to be the root of the problem).
>
> The memory space of the i.MX51 is a bit tight. It may be that you shadow
> registers with the dma coherent memory space. Can you please post your
> mmu setup code sniplet?
> The babbage works with mmu enabled.
>
btw: NAND support for i.MX51 works fine here (with a 8 bits width 2k pages 
size NAND).

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
