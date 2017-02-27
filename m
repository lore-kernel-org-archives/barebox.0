Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay0246.hostedemail.com ([216.40.44.246]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciQTe-0001Ey-Cz
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 18:56:56 +0000
References: <20170227075752.nb4rg64glmr67cmw@pengutronix.de>
 <20170227133930.1230-1-bst@pengutronix.de>
 <7649641e-ac3b-b184-582e-18400a1d6d45@mev.co.uk>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <94b8168e-0fd1-eb88-06d0-434b7c1ab1c0@mev.co.uk>
Date: Mon, 27 Feb 2017 18:51:38 +0000
MIME-Version: 1.0
In-Reply-To: <7649641e-ac3b-b184-582e-18400a1d6d45@mev.co.uk>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] fbconsole: check cursor position before moving
To: Bastian Stender <bst@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 27/02/17 18:46, Ian Abbott wrote:
> On 27/02/17 13:39, Bastian Stender wrote:
>> Moving the cursor to x=2, y=2 with "\e[3;3H" on a 12x2 framebuffer
>> console lead to a barebox crash while drawing the cursor. If the
>> cursor position is out of bounds clip the cursor to the corresponding
>> edge.
>>
>> Signed-off-by: Bastian Stender <bst@pengutronix.de>
>> ---
>>  drivers/video/fbconsole.c | 7 +++++--
>>  1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
>> index 64f7d7364e..33649c597d 100644
>> --- a/drivers/video/fbconsole.c
>> +++ b/drivers/video/fbconsole.c
>> @@ -264,10 +264,13 @@ static void fbc_parse_csi(struct fbc_priv *priv)
>>          return;
>>      case 'H':
>>          video_invertchar(priv, priv->x, priv->y);
>> +
>>          pos = simple_strtoul(priv->csi, &end, 10);
>> -        priv->y = pos ? pos - 1 : 0;
>> +        priv->y = clamp(pos - 1, 0, (int) priv->rows);
>> +
>
> That allows priv->y to be set to priv->rows, which is one too many.

Ignore that.  My mistake.  It appears that priv->rows is the number of 
rows minus 1, so the above code is fine.  Same for priv->x.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
