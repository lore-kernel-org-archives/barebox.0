Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PDi3f-0002jB-C4
	for barebox@lists.infradead.org; Wed, 03 Nov 2010 18:27:40 +0000
Message-ID: <4CD1A998.1060707@eukrea.com>
Date: Wed, 03 Nov 2010 19:27:36 +0100
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1288800496-17480-1-git-send-email-eric@eukrea.com>
	<20101103180234.GI6017@pengutronix.de>
In-Reply-To: <20101103180234.GI6017@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] eukrea_cpuimx35: fix flash header
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le 03/11/2010 19:02, Sascha Hauer a =E9crit :
> On Wed, Nov 03, 2010 at 05:08:16PM +0100, Eric B=E9nard wrote:
>> commit f0e62e69a58e249e11fc33f993e4cdb95eac6ea3 broke the header.
>>
>> Signed-off-by: Eric B=E9nard<eric@eukrea.com>
>> ---
>>   arch/arm/boards/eukrea_cpuimx35/flash_header.c |    5 +++--
>>   1 files changed, 3 insertions(+), 2 deletions(-)
>
> I guess This one is for -master?
>
yes, I broke this on the 1st of november so master is broken for this board.

Thanks
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
