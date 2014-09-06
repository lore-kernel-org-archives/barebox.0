Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s1.linux-source.de ([46.38.235.25])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQFeN-0006bw-1w
 for barebox@lists.infradead.org; Sat, 06 Sep 2014 13:03:32 +0000
Message-ID: <540B060B.2070404@linux-source.de>
Date: Sat, 06 Sep 2014 15:03:07 +0200
From: Sebastian Block <basti@linux-source.de>
MIME-Version: 1.0
References: <540AFD24.1000802@linux-source.de> <20140906123745.GA27510@omega>
In-Reply-To: <20140906123745.GA27510@omega>
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
Subject: Re: [PATCH] commands: add lodvar - load variable from file content
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alex,

> On Sat, Sep 06, 2014 at 02:25:08PM +0200, Sebastian Block wrote:
>> This adds a command to load a variable from file content.
>> It is a work-a-round for "var=$(cat file)".
>>
> 
> doesn't commands/readf.c do similar things?
> 

you are right. Please forget this patch.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
