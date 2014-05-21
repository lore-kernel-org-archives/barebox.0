Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WmxSs-0007kY-BH
 for barebox@lists.infradead.org; Wed, 21 May 2014 03:45:15 +0000
Received: by mail-ee0-f53.google.com with SMTP id c13so1056892eek.26
 for <barebox@lists.infradead.org>; Tue, 20 May 2014 20:44:51 -0700 (PDT)
Date: Wed, 21 May 2014 05:44:42 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140521034438.GA10482@omega>
References: <1400606875.26128.1.camel@mars> <20140520180830.GA4321@omega>
 <1400617760.26128.270.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400617760.26128.270.camel@mars>
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
Subject: Re: [PATCH] commands: add 'findstr' to get string from file
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Tue, May 20, 2014 at 10:29:20PM +0200, Christoph Fritz wrote:
> Hi Alexander
> 
> On Tue, 2014-05-20 at 20:08 +0200, Alexander Aring wrote:
> > On Tue, May 20, 2014 at 07:27:55PM +0200, Christoph Fritz wrote:
> 
> > > +config CMD_FINDSTR
> > > +	tristate
> > > +	default n
> > not needed.
> 
> Ok
> 
> > > +	while ((opt = getopt(argc, argv, "o:l:t:")) > 0) {
> > > +		switch (opt) {
> > > +		case 'o':
> > > +			offset = simple_strtoul(optarg, NULL, 0);
> > > +			break;
> > > +		case 'l':
> > > +			len = simple_strtoul(optarg, NULL, 0);
> > > +			break;
> > > +		case 't':
> > > +			t = optarg;
> > > +			break;
> > > +		}
> > 
> > switch case without default branch can occur compiler warnings.
> > 
> > You should return COMMAND_ERROR_USAGE in the default branch if non valid
> > parameter is given.
> 
> Ok
> 
> > > +	fd = open(argv[optind+1], O_RDONLY);
> > > +	if (fd < 0)
> > > +		return COMMAND_ERROR_USAGE;
> > > +
> > > +	while (1) {
> > > +		r = read(fd, mem_rw_buf, RW_BUF_SIZE);
> > > +		if (r < 0) {
> > > +			ret = -EIO;
> > > +			goto out;
> > > +		}
> > > +		if (!r)
> > > +			break;
> > > +
> > > +		v_idx = 0;
> > > +
> > > +		while (r) {
> > > +			if (v[v_idx] == s[s_idx])
> > > +				s_idx++;
> > > +			else
> > > +				s_idx = 0;
> > > +
> > > +			idx++;
> > > +			v_idx++;
> > > +
> > > +			if (s_idx == strlen(s)) {	/* found */
> > > +				loff_t sz;
> > > +				loff_t hit = idx - strlen(s);
> > > +
> > > +				if (lseek(fd, hit + offset, SEEK_SET) < 0) {
> > > +					ret = -EIO;
> > > +					goto out;
> > > +				}
> > > +
> > > +				if (!len)
> > > +					len = strlen(s);
> > > +				sz = min_t(loff_t, len, RW_BUF_SIZE - 1);
> > > +				r = read(fd, mem_rw_buf, sz);
> > > +				if (r != sz) {
> > > +					ret = -EIO;
> > > +					goto out;
> > > +				}
> > > +
> > > +				v[sz] = '\0';
> > > +
> > > +				if (t)
> > > +					setenv(t, v);
> > > +				else
> > > +					printf("%s\n", v);
> > > +
> > > +				ret = 0;
> > > +				goto out;
> > > +			}
> > > +			r--;
> > > +		}
> > 
> > Why not use read_file and the awesome string function strstr and then
> > write the file back.
> 
> read_file() reads the whole file which can get pretty slow over an i2c
> link accessing an eeprom which mostly holds the configuration-string at
> the beginning.
> 
> Why would I want to write the file back?
> 

Oh, thought you do that to manipulate the MAC configuration...
Yea, this could be slow and of course on big files like /dev/mem but
this would be more a pebcak related problem like somebody will do a
"edit /dev/mem", which should not work because edit use read_file.

Are you sure that the command also works if the searched string is
overlapped in two areas of RW_BUF_SIZE? I don't see that in the current
implementation.

You also assume here that the content is ascii based. Maybe you should
write that in the command description.

This handling would be much easier with a proper eeprom
configurationlayout with a static offset for each setting.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
