Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQFFw-0005LF-0n
 for barebox@lists.infradead.org; Sat, 06 Sep 2014 12:38:16 +0000
Received: by mail-we0-f180.google.com with SMTP id w61so12988910wes.11
 for <barebox@lists.infradead.org>; Sat, 06 Sep 2014 05:37:53 -0700 (PDT)
Date: Sat, 6 Sep 2014 14:37:47 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140906123745.GA27510@omega>
References: <540AFD24.1000802@linux-source.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <540AFD24.1000802@linux-source.de>
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
To: Sebastian Block <basti@linux-source.de>
Cc: barebox@lists.infradead.org

Hi Sebastian,

On Sat, Sep 06, 2014 at 02:25:08PM +0200, Sebastian Block wrote:
> This adds a command to load a variable from file content.
> It is a work-a-round for "var=$(cat file)".
> 

doesn't commands/readf.c do similar things?

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
