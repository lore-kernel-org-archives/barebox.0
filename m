Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PsIPL-0003U9-Ju
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 17:21:48 +0000
Message-ID: <4D654224.2030504@eukrea.com>
Date: Wed, 23 Feb 2011 18:21:40 +0100
From: Eric Benard <eric@eukrea.com>
MIME-Version: 1.0
References: <1296209604-29790-1-git-send-email-plagnioj@jcrosoft.com>
	<4D644DFA.9070706@eukrea.com>
	<20110223170512.GB29927@game.jcrosoft.org>
In-Reply-To: <20110223170512.GB29927@game.jcrosoft.org>
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
Subject: Re: [PATCH] lib/decompress_unlzo: use fill and full to read and write
	data
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean Christophe,

On 23/02/2011 18:05, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 00:59 Wed 23 Feb     , Eric Benard wrote:
>> On 28/01/2011 11:13, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>>
>>> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD<plagnioj@jcrosoft.com>
>>
>> unfortunatly, this commit breaks unlzo in barebox :
>> unlzo logo.bmp.lzo logo.bmp stays blocked forever
>> reverting this commit unbreak the unlzo command.
> I try it here on the versatile and it's work fine
>
> I will it again on the sam9261ek and other at91
>
strange. My test is done on an ARM11 (i.MX35).
I'll try to add log when I have time to find where it's blocked.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
